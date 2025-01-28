using ParallelPlots, Test, DataFrames

@testset "Color Feature Tests" begin
    cases = TEST_CASES[:color_features]
    for case in cases
        @testset "$(case[:name])" begin
            if haskey(case, :expected_error)
                @test_throws case[:expected_error] parallelplot(case[:df]; case[:params]...)
            else
                fig = parallelplot(case[:df]; case[:params]...)
                @test fig !== nothing
                save("test_output/$(case[:name]).png", fig)
            end
        end
    end
end