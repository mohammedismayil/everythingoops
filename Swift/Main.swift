let newVehicle =  Bike();

newVehicle.didLoad()

// let newCar = Car();

// newCar.drive();
// newCar.closeDoor();

protocol Vehicle{
    
    func drive()
}

class Car: Vehicle{
     func drive() {
    print("let's go to car drive")
    }

}
class Bike: APIProtocol{
var interactor: APIInteractor
func onSuccess() {
print("success from bike")
}
func onFailure() {
print("damn these coding- from bike class")
}

func didLoad(){
   self.interactor = APIInteractorClass(view:self)
    self.interactor.getData()
}


init() {
    self.interactor = APIInteractorClass(view:self)
}

   
}
// protocol Car {
// var name:    
// }
protocol APIProtocol{
    var interactor: APIInteractor{get set}
    func onSuccess()
    func onFailure()
}

protocol APIInteractor{

    var view:APIProtocol{get set}

    func sample()
    
}
extension APIInteractor{
    func getData(){
self.view.onSuccess()
    }

    
    init(view:APIProtocol) {
        self.view = view
    }
    
}
class APIInteractorClass: APIInteractor{
      var view:APIProtocol

    func sample(){
        print("items: Any...")
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