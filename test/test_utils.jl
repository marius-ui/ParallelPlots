using Random: seed!, rand
using DataFrames: DataFrame
using CairoMakie: LineSegments, save, Lines
using DrWatson
# Generate person data as a dictionary
function create_person_df(n_samples = 10)
    seed!(10)
    data = @dict(
        height = rand(150:180, n_samples),
        weight = rand(40:130, n_samples),
        age = rand(0:70, n_samples), # Random numbers between 0 and 70
        income = rand(450:5000, n_samples),
        education_years = rand(0:25, n_samples) # Random numbers between 0 and 25
    )
    return DataFrame(data)
end

# Generate car data as a dictionary
function create_car_df(n_samples = 10)
    seed!(10)
    data = @dict(
        horsepower = rand(60:300, n_samples),
        weight = rand(90:2000, n_samples),
        age = rand(0:70, n_samples)
    )
    return DataFrame(data)
end

# Count line segments in a plot
function count_line_segments(fig)
    return length(filter(
        x -> (typeof(x) <: LineSegments),
        fig.scene.plots))
end

# Count lines except black ones
function count_lines(fig)
    return length(filter(
        x -> typeof(x) <: Lines && !(x[:color][] == :black),
        fig.scene.plots))
end
