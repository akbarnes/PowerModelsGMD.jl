"KCL Constraint without load shedding and no shunts"
function constraint_kcl_gic(pm::GenericPowerModel, i::Int; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    bus = ref(pm, nw, :bus, i)
    bus_arcs = ref(pm, nw, :bus_arcs, i)
    bus_arcs_dc = ref(pm, nw, :bus_arcs_dc, i)
    bus_gens = ref(pm, nw, :bus_gens, i)
    bus_loads = ref(pm, nw, :bus_loads, i)

    bus_pd = Dict(k => ref(pm, nw, :load, k, "pd", cnd) for k in bus_loads)
    bus_qd = Dict(k => ref(pm, nw, :load, k, "qd", cnd) for k in bus_loads)

    constraint_kcl_gic(pm, nw, cnd, i, bus_arcs, bus_arcs_dc, bus_gens, bus_pd, bus_qd)
end


"KCL Constraint with load shedding"
function constraint_kcl_shunt_gic_ls(pm::GenericPowerModel, i::Int; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    bus = ref(pm, nw, :bus, i)
    bus_arcs = ref(pm, nw, :bus_arcs, i)
    bus_arcs_dc = ref(pm, nw, :bus_arcs_dc, i)
    bus_gens = ref(pm, nw, :bus_gens, i)
    bus_loads = ref(pm, nw, :bus_loads, i)
    bus_shunts = ref(pm, nw, :bus_shunts, i)

    bus_pd = Dict(k => ref(pm, nw, :load, k, "pd", cnd) for k in bus_loads)
    bus_qd = Dict(k => ref(pm, nw, :load, k, "qd", cnd) for k in bus_loads)

    bus_gs = Dict(k => ref(pm, nw, :shunt, k, "gs", cnd) for k in bus_shunts)
    bus_bs = Dict(k => ref(pm, nw, :shunt, k, "bs", cnd) for k in bus_shunts)

    constraint_kcl_shunt_gic_ls(pm, nw, cnd, i, bus_arcs, bus_arcs_dc, bus_gens, bus_pd, bus_qd, bus_gs, bus_bs)
end


"DC current on ungrounded gwye-delta transformers"
function constraint_dc_current_mag_gwye_delta_xf{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, k)

    kh = branch["gmd_br_hi"]
    br_hi = ref(pm, nw, :gmd_branch, kh)

    ih = br_hi["f_bus"]
    jh = br_hi["t_bus"]

    constraint_dc_current_mag_gwye_delta_xf(pm, nw, cnd, k, kh, ih, jh)
end


"DC current on ungrounded gwye-gwye transformers"
function constraint_dc_current_mag_gwye_gwye_xf{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, k)

    kh = branch["gmd_br_hi"]
    kl = branch["gmd_br_lo"]

    br_hi = ref(pm, nw, :gmd_branch, kh)
    br_lo = ref(pm, nw, :gmd_branch, kl)

    i = branch["f_bus"]
    j = branch["t_bus"]

    ih = br_hi["f_bus"]
    jh = br_hi["t_bus"]

    il = br_lo["f_bus"]
    jl = br_lo["t_bus"]

    vhi = ref(pm, nw, :bus, i, "base_kv")
    vlo = ref(pm, nw, :bus, j, "base_kv")
    a = vhi/vlo

    constraint_dc_current_mag_gwye_gwye_xf(pm, nw, cnd, k, kh, ih, jh, kl, il, jl, a)
end


"DC current on ungrounded gwye-gwye auto transformers"
function constraint_dc_current_mag_gwye_gwye_auto_xf{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, k)
    ks = branch["gmd_br_series"]
    kc = branch["gmd_br_common"]

    debug(LOGGER, @sprintf "Series GMD branch: %d, Common GMD branch: %d\n" ks kc)

    br_ser = ref(pm, nw, :gmd_branch, ks)
    br_com = ref(pm, nw, :gmd_branch, kc)

    i = branch["f_bus"]
    j = branch["t_bus"]

    is = br_ser["f_bus"]
    js = br_ser["t_bus"]

    ic = br_com["f_bus"]
    jc = br_com["t_bus"]


    ihi = -is
    ilo = ic + is

    vhi = ref(pm, nw, :bus, j, "base_kv")
    vlo = ref(pm, nw, :bus, i, "base_kv")
    a = vhi/vlo

    constraint_dc_current_mag_gwye_gwye_auto_xf(pm, nw, cnd, k, ks, is, js, kc, ic, jc, a)
end


"The KCL constraint for DC (GIC) circuits"
function constraint_dc_kcl_shunt{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    dcbus = ref(pm, nw, :gmd_bus, i)
    gmd_bus_arcs = pm.ref[:nw][nw][:gmd_bus_arcs][i]

    dc_expr = pm.model.ext[:nw][nw][:dc_expr]

    gs = dcbus["g_gnd"]

    constraint_dc_kcl_shunt(pm, nw, cnd, i, dc_expr, gs, gmd_bus_arcs)
end


"The DC ohms constraint for GIC"
function constraint_dc_ohms{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :gmd_branch, i)
    f_bus = branch["f_bus"]
    t_bus = branch["t_bus"]

    bus1 = ref(pm, nw, :gmd_bus, f_bus)
    bus2 = ref(pm, nw, :gmd_bus, t_bus)

#    dkm = branch["len_km"]
    vs = branch["br_v"]       # line dc series voltage

    if branch["br_r"] === nothing
        gs = 0.0
    else
        gs = 1.0/branch["br_r"]   # line dc series resistance
    end

    debug(LOGGER, @sprintf "branch %d: (%d,%d): vs = %0.3f, gs = %0.3f\n" i f_bus t_bus vs gs)

    constraint_dc_ohms(pm, nw, cnd, i, f_bus, t_bus, vs, gs)
end


"Constraint for computing qloss assuming DC voltage is constant"
function constraint_qloss_vnom{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, k)

    i = branch["hi_bus"]
    j = branch["lo_bus"]

    bus = ref(pm, nw, :bus, i)
    V = 1.0
    branchMVA = branch["baseMVA"]

    if "gmd_k" in keys(branch)
        ibase = branch["baseMVA"]*1000.0*sqrt(2.0)/(bus["base_kv"]*sqrt(3.0))
        K = branch["gmd_k"]*pm.data["baseMVA"]/ibase
        constraint_qloss_vnom(pm, nw, cnd, k, i, j, K, V, branchMVA)
    else
       constraint_qloss_vnom(pm, nw, cnd, k, i, j)
    end
end


"Constraint for computing thermal protection of transformers"
function constraint_thermal_protection{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, i)
    if branch["type"] != "xf"
        return
    end

    coeff = calc_branch_thermal_coeff(pm, i, nw=nw, cnd=cnd)
    ibase = calc_branch_ibase(pm, i, nw=nw, cnd=cnd)

    constraint_thermal_protection(pm, nw, cnd, i, coeff, ibase)
end


"Constraint for relating current to power flow"
function constraint_current{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, i)
    f_bus = branch["f_bus"]
    t_bus = branch["t_bus"]
    f_idx = (i, f_bus, t_bus)
    tm = branch["tap"]^2 

    constraint_current(pm, nw, cnd, i, f_idx, f_bus, t_bus, tm)
end


"Constraint for relating current to power flow on/off"
function constraint_current_on_off{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, i)
    ac_max = calc_ac_mag_max(pm, i, nw=nw)

#    constraint_current(pm,n,i)
    constraint_current_on_off(pm, nw, cnd, i, ac_max)
end


"Constraint for computing qloss"
function constraint_qloss{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, k)

    i = branch["hi_bus"]
    j = branch["lo_bus"]

    bus = ref(pm, nw, :bus, i)

    if "gmd_k" in keys(branch)
        ibase = branch["baseMVA"]*1000.0*sqrt(2.0)/(bus["base_kv"]*sqrt(3.0))
        K = branch["gmd_k"]*pm.data["baseMVA"]/ibase
        branchMVA = branch["baseMVA"]
        constraint_qloss(pm, nw, cnd, k, i, j, K, branchMVA)
    else
        constraint_qloss(pm, nw, cnd, k, i, j)
    end
end


"Constraint for turning generators on and off"
function constraint_gen_on_off{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    gen = ref(pm, nw, :gen, i)
    pmin = gen["pmin"]
    pmax = gen["pmax"]
    qmin = gen["qmin"]
    qmax = gen["qmax"]

    constraint_gen_on_off(pm, nw, cnd, i, pmin, pmax, qmin, qmax)
end


"Constraint for tieing ots variables to gen variables"
function constraint_gen_ots_on_off{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    gen = ref(pm, nw, :gen, i)
    bus = ref(pm, nw, :bus, gen["gen_bus"])
    bus_loads = ref(pm, nw, :bus_loads, bus["index"])
    if length(bus_loads) > 0
        pd = sum([ref(pm, nw, cnd, :load, i)["pd"] for i in bus_loads])
        qd = sum([ref(pm, nw, cnd, :load, i)["qd"] for i in bus_loads])
    else
        pd = 0.0
        qd = 0.0
    end

    # has load, so gen can not be on if not connected
    if pd != 0.0 && qd != 0.0
        return
    end
    bus_arcs = ref(pm, nw, :bus_arcs, i)

    constraint_gen_ots_on_off(pm, nw, cnd, i, bus_arcs)
end


"Perspective Constraint for generation cost"
function constraint_gen_perspective{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    gen  = ref(pm, nw, :gen, i)
    cost = gen["cost"]
    constraint_gen_perspective(pm, nw, cnd, i, cost)
end


"Ohms Constraint for DC circuits"
function constraint_dc_ohms_on_off{T}(pm::GenericPowerModel{T}, i; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :gmd_branch, i)
    f_bus = branch["f_bus"]
    t_bus = branch["t_bus"]
    ac_branch = branch["parent_index"]

    bus1 = ref(pm, nw, :gmd_bus, f_bus)
    bus2 = ref(pm, nw, :gmd_bus, t_bus)

   # dkm = branch["len_km"]

    vs = branch["br_v"]       # line dc series voltage

    if branch["br_r"] === nothing
        gs = 0.0
    else
        gs = 1.0/branch["br_r"]   # line dc series resistance
    end

    constraint_dc_ohms_on_off(pm, nw, cnd, i, gs, vs, f_bus, t_bus, ac_branch)
end

#"Constraint for current magnitude "
#function constraint_dc_current_mag{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
#    branch = ref(pm, nw, :branch, k)
#    dc_max = calc_dc_mag_max(pm, k, nw=nw)
#    constraint_dc_current_mag(pm, nw, cnd, k, dc_max)
#end


"On/off constraint for current magnitude "
function constraint_dc_current_mag_on_off{T}(pm::GenericPowerModel{T}, k; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    branch = ref(pm, nw, :branch, k)
    dc_max = calc_dc_mag_max(pm, k, nw=nw)
    constraint_dc_current_mag_on_off(pm, nw, cnd, k, dc_max)
end

### Thermal Constraints ###

""
function constraint_temperature_thermal_limit(pm::GenericPowerModel, i::Int; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    temperature = ref(pm, nw, :storage, i)
    constraint_temperature_thermal_limit(pm, nw, cnd, i, temperature["thermal_rating"][cnd])
end

""
function constraint_temperature_current_limit(pm::GenericPowerModel, i::Int; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    temperature = ref(pm, nw, :storage, i)
    constraint_temperature_current_limit(pm, nw, cnd, i, temperature["storage_bus"], storage["current_rating"][cnd])
end

""
function constraint_temperature_exchange(pm::GenericPowerModel, i::Int; nw::Int=pm.cnw, cnd::Int=pm.ccnd)
    temperature = ref(pm, nw, :storage, i)

    constraint_temperature_complementarity(pm, nw, i)
    constraint_temperature_loss(pm, nw, i, temperature["storage_bus"], temperature["r"][cnd], temperature["x"][cnd], temperature["standby_loss"])
end

""
function constraint_temperature_state(pm::GenericPowerModel, i::Int; nw::Int=pm.cnw)
    temperature = ref(pm, nw, :storage, i)

    if haskey(pm.data, "time_elapsed")
        time_elapsed = pm.data["time_elapsed"]
    else
        warn("network data should specify time_elapsed, using 1.0 as a default")
        time_elapsed = 1.0
    end

    constraint_temperature_state_initial(pm, nw, i, temperature["energy"], temperature["charge_efficiency"], temperature["discharge_efficiency"], time_elapsed)
end

""
function constraint_temperature_state(pm::GenericPowerModel, i::Int, nw_1::Int, nw_2::Int)
    temperature = ref(pm, nw_2, :storage, i)

    if haskey(pm.data, "time_elapsed")
        time_elapsed = pm.data["time_elapsed"]
    else
        warn("network data should specify time_elapsed, using 1.0 as a default")
        time_elapsed = 1.0
    end

    constraint_temperature_state(pm, nw_1, nw_2, i, temperature["charge_efficiency"], temperature["discharge_efficiency"], time_elapsed)
e
