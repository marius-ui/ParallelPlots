using ParallelPlots
using Test
using DataFrames

@testset "ParallelPlots Tests" begin
    include("test_utils.jl")
    
    @testset "Core Functionality" begin
        include("test_argument_errors.jl")
        include("test_default_call.jl")
        include("test_call_with_normalize.jl")
    end
    
    @testset "Visual Features" begin
        include("test_call_with_color_feature.jl")
        include("test_call_with_feature_labels.jl")
        include("test_curved.jl")
    end
    
    @testset "Advanced Features" begin
        include("test_recipe_observable.jl")
        include("test_custom_dimensions.jl")
    end
end