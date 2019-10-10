
## Data Exploration - NRCS-Xerces Society

We have various data sets for the project, in that I have used the seed related data for my data exploration assignment. Field_ID column name had some issues while reading in R, so I have modified the csv file columns and used it for this work. Have attached the original file as well as the modified file for reference.

### 1) Scatterplot of Species vs Origin
![Scatterplot of Species vs Origin](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Species_vs_Origin.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x = Origin, y = Species))
  


### 2) Scatterplot of LiveSeed vs FieldID
![Scatterplot of LiveSeed vs FieldID](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Liveseed_vs_FieldID.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x=Field_ID, y = LiveSeed_Concentration))
 
Observation:
 
### 3) Scatterplot of FieldID vs Species
![Scatterplot of FieldID vs Species](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/FiedID_vs_Species.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x=Species, y = Field_ID))

Observation:

### 4)  Scatterplot of LiveSeed vs Origin
![ Scatterplot of ](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/LiveSeed_vs_Origin.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x=Origin, y = LiveSeed_Concentration))

Observation:
### 5) Three Variable Scatterplot
![Three Variable Scattere Plot1](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/3variable_scatter_plot.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (y=Origin, x = LiveSeed_Concentration, color=Species))

Observation:

![Three Variable Scattere Plot2](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/3_variable_scattered_using_Geomsmooth.JPG)
>
Observation:

### 6) Facet Plot:
![ScattFacet Plot](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Facet_Plot.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (y=LiveSeed_Concentration, x = Field_ID)) + facet_grid(.~Origin)

Observation:
  
### 7) Bar Chart:
![Bar Chart](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Bar_chart_Species_Origin.JPG)
> Origin.data <- table(seedData$Origin) 
barplot(Origin.data, main ="Species Origin" , xlab = "Origin", ylab ="Count" , border= NA) 

Observation:

