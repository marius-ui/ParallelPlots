using ParallelPlots, Test, DataFrames

@testset "Curved Line Tests" begin
    df = create_person_df()
    
    test_cases = [
        Dict(:name => "straight_lines", :curve => false, :expected_segments => 10),
        Dict(:name => "curved_lines", :curve => true, :expected_segments => 280)
    ]
    
    for case in test_cases
        @testset "$(case[:name])" begin
            fig = parallelplot(df; curve=case[:curve])
            @test count_line_segments(fig) == case[:expected_segments]
            save("test_output/$(case[:name]).png", fig)
        end
    end
end