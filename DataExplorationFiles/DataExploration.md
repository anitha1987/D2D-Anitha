
## Data Exploration - NRCS-Xerces Society

We have various data sets for the project, in that I have used the seed related data for my data exploration assignment. Field_ID column name had some issues while reading in R, so I have modified the csv file columns and used it for this work. Have attached the original file as well as the modified file for reference.

### 1) Scatterplot of Species vs Origin
![Scatterplot of Species vs Origin]()
> ggplot(data= seedData) + geom_point(mapping= aes (x = Origin, y = Species))
  


### 2) Scatterplot of LiveSeed vs FieldID
![Scatterplot of LiveSeed vs FieldID]()
> ggplot(data= seedData) + geom_point(mapping= aes (x=Field_ID, y = LiveSeed_Concentration))
 
Observation:
 
### 3) Scatterplot of FieldID vs Species
![Scatterplot of FieldID vs Species]()
> ggplot(data= seedData) + geom_point(mapping= aes (x=Species, y = Field_ID))

Observation:

### 4)  Scatterplot of LiveSeed vs Origin
![ Scatterplot of ]()
> ggplot(data= seedData) + geom_point(mapping= aes (x=Origin, y = LiveSeed_Concentration))

Observation:
### 5) Three Variable Scatterplot
![Three Variable Scattere Plot]()
> ggplot(data= seedData) + geom_point(mapping= aes (y=Origin, x = LiveSeed_Concentration, color=Species))

Observation:

### 6) Facet Plot:
![ScattFacet Plot]()
> ggplot(data= seedData) + geom_point(mapping= aes (y=LiveSeed_Concentration, x = Field_ID)) + facet_grid(.~Origin)

Observation:
  
### 7) Bar Chart:
![Bar Chart]()
> Origin.data <- table(seedData$Origin) 
barplot(Origin.data, main ="Species Origin" , xlab = "Origin", ylab ="Count" , border= NA) 

Observation:

