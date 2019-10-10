
## _Data Exploration - NRCS-Xerces Society_

We have various data sets for the project, in that I have used the seed related data for my data exploration assignment. Field_ID column name had some issues while reading in R, so I have modified the csv file columns and used it for this work. Have attached the original file as well as the modified file for reference.

### 1) _Scatterplot of Species vs Origin_
![Scatterplot of Species vs Origin](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Species_vs_Origin.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x = Origin, y = Species))
  
#### _Observation_
This plot tells us that the origin region **IA, NE & NA** has almost all the species. Rest of the origin regions are specifc to certain species involved in the study and not all the species.

### 2) _Scatterplot of LiveSeed vs FieldID_
![Scatterplot of LiveSeed vs FieldID](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Liveseed_vs_FieldID.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x=Field_ID, y = LiveSeed_Concentration))
 
#### _Observation_
This observation tells us that almost every field has a live seed concentartion was only in the range of 0.0 to 0.05lbs/acre. Only furnace and harland field has some higher range of live seed concentration ranging upto 0.4 lbs/acre.
**Note**  Live seed concentration is given in lbs/acre.
 
### 3) _Scatterplot of FieldID vs Species_
![Scatterplot of FieldID vs Species](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/FiedID_vs_Species.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x=Species, y = Field_ID))

#### _Observation_
This plot tells us that every species are tested in all the field. Only **Johnson field transects** has very low number of species compared to other fields.

### 4)  _Scatterplot of LiveSeed vs Origin_
![ Scatterplot of ](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/LiveSeed_vs_Origin.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (x=Origin, y = LiveSeed_Concentration))

#### _Observation_
This plot gives us the information about the species's live seed concentration related to origin region. It indicates that few species originated in regios of **KS, MO, NE. OR & NA** have comparitively higher concentration than other region's origin species.

### 5) _Three Variable Scatterplot_
![Three Variable Scattere Plot1](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/3variable_scatter_plot.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (y=Origin, x = LiveSeed_Concentration, color=Species))

#### _Observation_
This gives us the same information like the above plot but hence it is differentiated with the colors, we come to know which species is really having the high live seed concentration specific to origin. In that way Andropogon Genus have higher concentration of live seed than other species.

![Three Variable Scattere Plot2](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/3_variable_scattered_using_Geomsmooth.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (y=Origin, x = Field_ID, color=Species))

#### _Observation_
This observation helps us to find out which which species on which feild specific to which region of origin is growing.

### 6) _Facet Plot_
![ScattFacet Plot](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Facet_Plot.JPG)
> ggplot(data= seedData) + geom_point(mapping= aes (y=LiveSeed_Concentration, x = Field_ID)) + facet_grid(.~Origin)

#### _Observation_
This facet plot shows us the regionof origin specific live seed concentration in each field.
  
### 7) _Bar Chart_
![Bar Chart](https://github.com/anitha1987/D2D-Anitha/blob/master/DataExplorationFiles/Bar_chart_Species_Origin.JPG)
> Origin.data <- table(seedData$Origin) 
barplot(Origin.data, main ="Species Origin" , xlab = "Origin", ylab ="Count" , border= NA) 

#### _Observation_
Clearly indicates that **NE and IA** has the high count of species, whereas **MI, MT, SD & TX** has very low count of origin species.

