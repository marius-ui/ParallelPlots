# ParallelPlots

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://moritz155.github.io/ParallelPlots.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://moritz155.github.io/ParallelPlots.jl/dev/)
[![Build Status](https://github.com/moritz155/ParallelPlots/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/moritz155/ParallelPlots/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/moritz155/ParallelPlots/branch/main/graph/badge.svg)](https://codecov.io/gh/moritz155/ParallelPlots)

## General
This Project is for the TU-Berlin Course "Julia Programming for Machine Learning"<br>
Please make sure, that Julia `1.10` is used!

This Module will return you a nice Scene you can use to display your Data with [Parallel Coordinates](https://en.wikipedia.org/wiki/Parallel_coordinates)<br>
<img src="test/parallel_coordinates_plot.png" width="300" />

_This Module was created with PkgTemplates.jl_

## Mathematical Background
Parallel coordinates transform high-dimensional data into a 2D visualization by aligning axes parallel to each other. Key transformations include:

### 1. **Axis Shifting**  
Shifting the origin of a coordinate system from $O\{a, b\}$ to $O'\{a', b'\}$ transforms coordinates as:  
$x' = x - a, \quad y' = y - b$

### 2. **Normalization**  
To compare variables on different scales, data is normalized to $[0, 1]$:  
$x_{\text{norm}} = \frac{x - \min(x)}{\max(x) - \min(x)}$



These principles underpin how parallel coordinates handle scaling and alignment of axes.

## Getting Started

### Install Dependencies & Use Package
Please refer to this [Link](https://adrianhill.de/julia-ml-course/lectures/E1_Installation.html) for Installation of Julia

You need to use the package (1-3) and install the dependencies (4-5)
1. Open Julia with `julia` in your command prompt
2. Open the package manager with `]`
3. Using our Package
    * `activate /path/to/package` <br>
      or<br>
      `activate .` when Julia was opened with command prompt already in package path

    * _you will then see: `(ParallelPlots) pkg>`_
4. go back to `julia>` by pressing `CMD`+`C`
5. `Import ParallelPlots` to download Dependencies and use the Package from Command Line

### Usage
#### Available Parameter

| Parameter         | Default  | Example                            | Description                                                                                                            |
|-------------------|----------|------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| normalize::Bool   | false    | normalize=true                     | If the Data should be normalized (min/max)                                                                             |
| title::String     | ""       | title="My Title"                   | The Title of The Figure,                                                                                               |
| colormap          | :viridis | colormap=:thermal                  | The Colors of the [Lines](https://docs.makie.org/dev/explanations/colors)                                              |
| color_feature     | nothing  | color_feature="weight"             | The Color of the Lines will be based on the values of this selected feature. If nothing, the last feature will be used |
| feature_labels    | nothing  | feature_labels=["Weight","Age"]    | Add your own Axis labels, just use the exact amount of labes as you have axis                                          |
| feature_selection | nothing  | feature_selection=["weight","age"] | Select, which features should be Displayed. If color_feature is not in this List, use the last one                     |
| curve             | false    | curve=true                         | Show the Lines Curved                                                                                                  |
| show_color_legend | nothing  | show_color_legend=true             | Show the Color Legend. If parameter not set & color_feature not shown, it will be displayed automaticly                |


#### Examples
```
julia> using ParallelPlots
julia> parallelplot(DataFrame(height=160:180,weight=60:80,age=20:40))
```
```
# If you want to normalize the Data, you can add the value normalized=true, default is false
julia> parallelplot(DataFrame(height=160:180,weight=reverse(60:80),age=20:40),normalize=true)
```
```
# If you want to set the size of the plot (default width:800, height:600)
julia> parallelplot( DataFrame(height=160:180,weight=60:80,age=20:40), figure = (resolution = (300, 300),) )
```
```
# You can update as well the Graph with Observables
julia> df_observable = Observable(DataFrame(height=160:180,weight=60:80,age=20:40))
julia> fig, ax, sc = parallelplot(df_observable)
```
```
# If you want to add a Title for the Figure, sure you can!
julia> parallelplot(DataFrame(height=160:180,weight=reverse(60:80),age=20:40),title="My Title")
```
```
# If you want to specify the axis labels, make sure to use the same number of labels as you have axis!
julia> parallelplot(DataFrame(height=160:180,weight=reverse(60:80),age=20:40), feature_labels=["Height","Weight","Age"])
```
```
# Adjust Color and and feature
parallelplot(df,
		# You choose which axis/feature should be in charge for the coloring
        color_feature="weight",
        # you can as well select, which Axis should be shown
        feature_selection=["height","age","income"],
        # and label them as you like
        feature_labels=["Height","Age","Income"],
        # you can change the ColorMap (https://docs.makie.org/dev/explanations/colors)
        colormap=:thermal,
        # ...and can choose to display the color legend.
        # If this Attribute is not set,
        # it will only show the ColorBar, when the color feature is not in the selected feature
        show_color_legend = true
    )
```

Please read the [Docs](/docs/build/index.html) for further Information

### Working on this Package / Cheatsheet
1. Using the Package
   * `activate /path/to/package` <br>
   or<br>
   `activate .` when Julia was opened with command prompt already in package path
 
   * _you will then see: `(ParallelPlots) pkg>`_

2. Running commands
   * Adding external Dependencies
     - `add DepName`
   * Run Tests to check if Package is still working as intended 
     - `test`
   * Build
     - `build`
   * Precompile
     - `precompile`


#### Create Docs
* move to `./docs` folder with command line
* run `julia --project make.jl`



