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
class Car: Vehicle{
     func drive() {
    print("let's go to car drive")
    }

}
extension Vehicle{
    func horn(){
        print("honk honk")
    }

    func lightOn(){
        print("darkness removed")
    }

    func closeDoor(){
        print("closing door automatically")
    }
}