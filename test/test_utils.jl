# test_utils.jl
const TEST_CASES = Dict(
    :argument_errors => [
        Dict(
            :name => "missing_values",
            :df => DataFrame(Name=["Alice", "Bob", "Charlie"], Age=[25, 30, missing], City=["Berlin", "Munich", "Hamburg"]),
            :expected_error => ArgumentError
        ),
        Dict(
            :name => "one_column",
            :df => DataFrame(Name=["Alice"]),
            :expected_error => ArgumentError
        )
    ],
    
    :color_features => [
        Dict(
            :name => "valid_color_feature",
            :df => create_person_df(),
            :params => Dict(:color_feature => "weight", :colormap => :thermal),
            :expected => nothing
        ),
        Dict(
            :name => "invalid_color_feature",
            :df => create_person_df(),
            :params => Dict(:color_feature => "invalid_column"),
            :expected_error => AssertionError
        )
    ],
    
    :feature_selection => [
        Dict(
            :name => "valid_selection",
            :df => create_person_df(),
            :params => Dict(:feature_selection => ["height", "age", "income"]),
            :expected => nothing
        )
    ]
)
# test_utils.jl
function save_test_output(fig, testname)
    mkpath("test_output")
    save("test_output/$testname.png", fig)
end

function visualize_test_case(case)
    fig = parallelplot(case[:df]; get(case, :params, Dict())...)
    save_test_output(fig, case[:name])
    return fig
end