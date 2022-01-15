protocol Vehicle{
    var name:String
    func drive()
}
class Bike: Vehicle{
    
}
// protocol Car {
// var name:    
// }


extension Vehicle{
    func horn(){
        print("honk honk")
    }
}