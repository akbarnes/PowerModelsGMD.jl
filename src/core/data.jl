export make_gmd_mixed_units, adjust_gmd_qloss

function calculate_qloss(branch, case, solution)
    k = "$(branch["index"])"
    i = "$(branch["hi_bus"])"
    j = "$(branch["lo_bus"])"

    br_soln = solution["branch"][k]
    bus = case["bus"][i]
    i_dc_mag = abs(br_soln["gmd_idc"])
        
    if "gmd_k" in keys(branch)
        ibase = branch["baseMVA"]*1000.0*sqrt(2.0)/(bus["base_kv"]*sqrt(3.0))
        K = branch["gmd_k"]*data["baseMVA"]/ibase

        # K is per phase
        return K*i_dc_mag/(3.0*branch["baseMVA"])
    end
        
    return 0.0
end    

""
function add_gmd_data(case::Dict{String,Any}, solution::Dict{String,Any}; decoupled=false)
    for (k,bus) in case["bus"]
        j = "$(bus["gmd_bus"])"
        bus["gmd_vdc"] = solution["gmd_bus"][j]["gmd_vdc"]
    end

    # for (k,sub) in solution["sub"]
    #     i = "$(sub["gmd_bus"])"
    #     sub["gmd_vdc"] = solution["gmd_bus"][i]["gmd_vdc"]
    # end


    for (i,br) in case["branch"]
        br_soln = solution["branch"][i]

        if br["type"] == "line"
            k = "$(br["gmd_br"])"
            br["gmd_idc"] = solution["gmd_branch"][k]["gmd_idc"]/3.0
        else # branch is transformer
            if decoupled
                # get he high-side gmd branch
                k = br["dc_brid_hi"]
                # TODO: add calculations from constraint_dc_current_mag
                br["gmd_idc"] = 0.0


                br["ieff"] = abs(br["gmd_idc"])
                br["qloss"] = calculate_qloss(br, case, solution)
            else
                br["ieff"] = br_soln["gmd_idc_mag"]
                br["qloss"] = br_soln["gmd_qloss"]
            end

            if br["f_bus"] == br["hi_bus"]
                br_soln["qf"] += br_soln["gmd_qloss"]
            else
                br_soln["qt"] += br_soln["gmd_qloss"]
            end
        end

        br["qf"] = br_soln["qf"]
        br["qt"] = br_soln["qt"]
    end
end


# data to be concerned with:
# 1. shunt impedances aij
# 2. equivalent currents Jij?
# 3. transformer loss factor Ki? NO, UNITLESSS
# 4. electric field magnitude?
gmd_not_pu = Set(["gmd_gs","gmd_e_field_mag"])
gmd_not_rad = Set(["gmd_e_field_dir"])

function make_gmd_per_unit!(data::Dict{AbstractString,Any})
    if !haskey(data, "GMDperUnit") || data["GMDperUnit"] == false
        make_gmd_per_unit!(data["baseMVA"], data)
        data["GMDperUnit"] = true
    end
end

function make_gmd_per_unit!(mva_base::Number, data::Dict{AbstractString,Any})
    # vb = 1e3*data["bus"][1]["base_kv"] # not sure h
    # data["gmd_e_field_mag"] /= vb
    # data["gmd_e_field_dir"] *= pi/180.0

    for bus in data["bus"]
        zb = bus["base_kv"]^2/mva_base
        #@printf "bus [%d] zb: %f a(pu): %f\n" bus["index"] zb bus["gmd_gs"]
        bus["gmd_gs"] *= zb
        # @printf " -> a(pu): %f\n" bus["gmd_gs"]
    end
end

""
function apply_func(data::Dict{String,Any}, key::String, func)
    if haskey(data, key)
        data[key] = func(data[key])
    end
end

function adjust_gmd_qloss(case::Dict{String,Any},data::Dict{String,Any})
    for (i,br) in case["branch"]
        br_soln = data["branch"][i]

        if br["f_bus"] == br["hi_bus"]
            br_soln["qf"] += br_soln["gmd_qloss"]
        else
            br_soln["qt"] += br_soln["gmd_qloss"]
        end
    end
end


function make_gmd_mixed_units(data::Dict{String,Any}, mva_base::Real)
    rescale      = x -> x*mva_base
    rescale_dual = x -> x/mva_base

    if haskey(data, "bus")
        for (i, bus) in data["bus"]
            apply_func(bus, "pd", rescale)
            apply_func(bus, "qd", rescale)

            apply_func(bus, "gs", rescale)
            apply_func(bus, "bs", rescale)

            apply_func(bus, "va", rad2deg)

            apply_func(bus, "lam_kcl_r", rescale_dual)
            apply_func(bus, "lam_kcl_i", rescale_dual)
        end
    end

    branches = []
    if haskey(data, "branch")
        append!(branches, values(data["branch"]))
    end

    dclines =[]
    if haskey(data, "dcline")
        append!(dclines, values(data["dcline"]))
    end

    if haskey(data, "ne_branch")
        append!(branches, values(data["ne_branch"]))
    end

    for branch in branches
        apply_func(branch, "rate_a", rescale)
        apply_func(branch, "rate_b", rescale)
        apply_func(branch, "rate_c", rescale)

        apply_func(branch, "shift", rad2deg)
        apply_func(branch, "angmax", rad2deg)
        apply_func(branch, "angmin", rad2deg)

        apply_func(branch, "pf", rescale)
        apply_func(branch, "pt", rescale)
        apply_func(branch, "qf", rescale)
        apply_func(branch, "qt", rescale)

        apply_func(branch, "mu_sm_fr", rescale_dual)
        apply_func(branch, "mu_sm_to", rescale_dual)
    end

    for dcline in dclines
        apply_func(dcline, "loss0", rescale)
        apply_func(dcline, "pf", rescale)
        apply_func(dcline, "pt", rescale)
        apply_func(dcline, "qf", rescale)
        apply_func(dcline, "qt", rescale)
        apply_func(dcline, "pmaxt", rescale)
        apply_func(dcline, "pmint", rescale)
        apply_func(dcline, "pmaxf", rescale)
        apply_func(dcline, "pminf", rescale)
        apply_func(dcline, "qmaxt", rescale)
        apply_func(dcline, "qmint", rescale)
        apply_func(dcline, "qmaxf", rescale)
        apply_func(dcline, "qminf", rescale)
    end

    if haskey(data, "gen")
        for (i, gen) in data["gen"]
            apply_func(gen, "pg", rescale)
            apply_func(gen, "qg", rescale)

            apply_func(gen, "pmax", rescale)
            apply_func(gen, "pmin", rescale)

            apply_func(gen, "qmax", rescale)
            apply_func(gen, "qmin", rescale)

            if "model" in keys(gen) && "cost" in keys(gen)
                if gen["model"] != 2
                    warn("Skipping generator cost model of type other than 2")
                else
                    degree = length(gen["cost"])
                    for (i, item) in enumerate(gen["cost"])
                        gen["cost"][i] = item/mva_base^(degree-i)
                    end
                end
            end
        end
    end

end