
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Q1
totalem <- aggregate(NEI$Emissions, by=list(NEI$year), FUN=sum)

#Q2
balt <- NEI[which(NEI$fips == "24510"), ]
baltem <- aggregate(balt$Emissions, by=list(balt$year), FUN=sum)

#Q3
baltemtype <- aggregate(balt$Emissions, by=list(balt$year, balt$type), FUN=sum)