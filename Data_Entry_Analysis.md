# _Data Entry Analysis Assignment_

## Error Details in the Existing Data File

|Serial_no|Data_Errors|Suggestions|Error_Consequences|
|:--|:----|:---------|:------|
| 1| Data format is not mentioned, hence confusing.| Could follow **_YYYY-MM-DD format_**.| Would help in avoiding assumptions on dates and months if it is single digit and also will avoid different conventions in different platform and Microsoft Excel.|
| 2| Insufficient data on temperature unit.| Could use degree **_celsius or fahrenheit_**.|It is critical fact in the study for interpretation of results. Sample collected from different depth of water may have difference in temperature too.|
| 3| Missing time details.| Day-Night differnetiation could be given by providing the exact time of collection in 24 hrs format.| Examination of day-night distirbution is the crucial part of the study, in which time is the significant factor. By having the 24 hrs format we could avoid **_AM or PM misplacement_**.|
| 4| Calculation in the data field.| Avoiding **_formulas and calulations_** are the best practice for data organization.| There are chances to misplace the data and some time enter the junk data in the field.|
| 5| Empty cells in between.| Could be replaced by **_NA or Hyphen_**.| This would help in differentiating the missing data from blank data ans spaces.|
| 6| Font colors and Highlighted cells.| Could include additional columns to **_indicate the outliers_**.| It would be hard to extract and use the data for further analysis.|
| 7| Variables names are not consistent.| Could use **_CamelCasing or underscores_** in between words which is pretty consistent.| Would avoid making the programming harder. Spaces have different meaning in different places. Avoiding spaces will help a lot for further processing of data.|
| 8| No data validation done.| **_Data validations_** for dates, decimals and text length could be included.| Would help in avoiding data errors, data mangling in Microsoft Excel and prevent from entering irrelevant value in the column.|
| 9| Raw data file with analysis work.| Raw data file could be _**separate from analysis copy_**.| Since there are chances to miss the existing value or change the data during analysis process. Having raw data separately would help in avoiding unnecessary confusions.|
|10| Negative values in individual organism per liter column.| Could be **_replaced by zero_**.| Since it is individual count per liter, negative value doesn not make any sense to the data. If there is no organism growth in particular sample, it should be zero and not negative value.|
|11|Data Dictionary informations are scattered in the data file.| Proper unit details and explanation should be provided in separate file called data dicitionary.| Data dictionary would help in providing the additional information about the data, which is nothing but data about the data. It is commonly called as metadata which will help the user to understand the purposse of the data very clearly.|
|12| Insufficient data in the density column.| **_specify what density_** and further explanation about it in the data dictionary.| Density could be measured both for water and microbial colony. Therefore it would help in better understanding of data.|


## Newly Proposed Data File Format

|Sample_No|Collection_Date|Collection_Time|Collection_Depth|Secchi|Temperature |Species_Name|Colony_Size|Count_per_Liter|Chlorophyll_a|z_Value|Additional_Info|
|:-------|:--|:--|:-------------|:-----------------|:-------|:-----------|:----------|:--------------|:-----------|:-----|:---|
|1|2019-04-16|22|30|34|56|C_uni|78|67|2.45|0.5|NA|
|2|2019-04-19|34|56|74|38|C_hippo|67|45|8.56|0.5|NA|
|3|2019-05-19|87|26|94|21|C_uni|23|83|3.75|10|z_value is suspicious|

## Data Dictionary Table

|Content|Description|
|:-----|:---------|
|C_uni|**_Conochilus unicornis_** study organism, a type of zooplankton generally called as rotifers.|
|C-hippo|**_Conochilus hippocrepis_** another study organism, a type of zooplankton generally called as rotifiers.|
|Colony_size|Colony diameter measured in **_millimeter_**.|
|Temperature|YSI probe taken once at each depth and it is measured in **_Fahrenheit_**.|
|Chrophyll_a|Phytoplankton has chlorophyll a to capture the sunlight. Phytoplankton are the primary source of food for zooplankton.Hence measure of it would help in finding the day-night distribution of the study species.|
|Density|Water density is measured and not the microbial density.|
|Date_Info|**_YYYY-MM-DD_** format is followed.|
|Time_Info|**_24_** hrs format is followed.|
|Secchi|It is a circular disk used to measure the water **_turbidity/transparency_**. By using it vertical measurements are taken.|
|General Note|These data is for the researchers/investigators to examine the **_day-night distribution_** of the 2 study species across multiple layers in water.|

### Assumptions

* Temperature YSI probe measures in Fahrenheit.
* Colony count per liter.
* Water Density is used.

#### _Thanks for your time to review my data entry analysis assignment work !!_
