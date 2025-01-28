using ParallelPlots, Test, DataFrames

@testset "Argument Error Tests" begin
    cases = TEST_CASES[:argument_errors]
    for case in cases
        @testset "$(case[:name])" begin
            if haskey(case, :expected_error)
                @test_throws case[:expected_error] parallelplot(case[:df])
            else
                @test parallelplot(case[:df]) !== nothing
            end
        end
    end
end