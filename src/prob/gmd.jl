# Formulations of GMD Problems that solves for the GIC current only
export run_gmd

"Run GIC current model only"
function run_gmd(file, solver; kwargs...)
    return PMs.run_model(file, ACPPowerModel, solver, post_gmd; solution_builder = get_gmd_solution, kwargs...)
end

"Post problem corresponding to the dc gic problem this is a linear constraint satisfaction problem"
function post_gmd(pm::PMs.GenericPowerModel; kwargs...)
    variable_dc_voltage(pm)
    variable_dc_line_flow(pm)

    ### DC network constraints ###
    for i in PMs.ids(pm, :gmd_bus)
        Memento.debug(LOGGER, "Adding constraits for bus $i")
        constraint_dc_kcl_shunt(pm, i)
    end

    for i in PMs.ids(pm, :gmd_branch)
        constraint_dc_ohms(pm, i)
    end
end
