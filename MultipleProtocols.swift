protocol Driver{
    func driveSafe()
}
protocol LuxuriousCarsStandard{
    var swivelSeats :Int{get set}
    
//    func antiTheftTracking()
//    func driveLuxurious()
}
class MarutiCars{
    func getMarutiCarsDesign(){
    
    }
}
class VolVoCars:MarutiCars{
    func getVolVoCarsDesign(){
      
    }
}
class HyndaiCars:VolVoCars{
    func getHyndaiCarsDesign(){
        
    }
}


class BMWCars:MarutiCars{
    var swivelSeats = 2
    func getBMWCarsDesign(){
        print("swivelSeats \(swivelSeats)")
        
        //here we can use maruti cars design
        
        print(getMarutiCarsDesign())
    }
}
extension BMWCars: LuxuriousCarsStandard{
    
}

let volvocar = VolVoCars()

volvocar.getMarutiCarsDesign()

let hyundaicar = HyndaiCars()

hyundaicar.getMarutiCarsDesign()

hyundaicar.getHyndaiCarsDesign()
hyundaicar.getVolVoCarsDesign()
