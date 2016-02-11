hfplot <- function (
    region = c("Alberta", 
        "CanadianShield", 
        "Boreal", 
        "Foothills", 
        "RockyMountain", 
        "Parkland", 
        "Grassland"),
    type = c("Total", 
        "HumancreatedWaterBodies", 
        "Agriculture", 
        "UrbanRuralIndustrial", 
        "MinesWellsOtherEnergyFeatures", 
        "VegetatedLinearIndustrialFeatures", 
        "Transportation", 
        "ForestHarvest")) {
    region <- match.arg(region)
    type <- match.arg(type)
    data(hf, package="footprintchange")
    Year <- c(1999, 2001, 2002:2014)
    Footprint <- hf[region,type,]
    Rate <- diff(range(Footprint)) / diff(range(Year))
    p <- ggplot2::qplot(Year, Footprint, 
        ylab=paste(type, "Footprint (%)"), 
        main=paste0(region, " (", round(Rate,2), "%/yr)"),
        geom=c("point","line")) + theme_grey(base_size = 18)
	print(p)  
	invisible()
}
