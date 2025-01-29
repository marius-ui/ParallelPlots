# Usage
## Available Parameter

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