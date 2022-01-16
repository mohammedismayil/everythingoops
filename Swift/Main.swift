let newVehicle =  Bike();

newVehicle.didLoad();

let newCar = Car();
newCar.willAppear()
class Bike: APIProtocol{
var interactor: APIInteractor?
func onSuccess(data:String) {
print("success from bike")
}
func onFailure(data:String) {
print(data)
}
func didLoad(){
   
    self.interactor?.getData()   
}

init() {
    //  self.interactor = APIInteractorClass(view:self)
    self.interactor = APIInteractorClass.init(view: self)
}
}
class Car: APIProtocol{
var interactor: APIInteractor?
func onSuccess(data:String) {
print("success from bike")
}
func onFailure(data:String) {
print(data)
}
func didLoad(){
   
    self.interactor?.getData()   
}

func willAppear(){
    self.interactor?.getData()
}

init() {
    //  self.interactor = APIInteractorClass(view:self)
    self.interactor = APIInteractorClass.init(view: self)
}



   
}

protocol APIProtocol{
    var interactor: APIInteractor?{get set}
    func onSuccess(data:String)
    func onFailure(data:String)
}

protocol APIInteractor{
    var view:APIProtocol?{get set}
    func sample()
    
}
extension APIInteractor{
    func getData(){
self.view?.onFailure(data:"we are not done yet")
    }
}
class APIInteractorClass: APIInteractor{
      var view:APIProtocol?

    func sample(){
        print("items: Any...")
    }
init(view:APIProtocol) {
    self.view = view
}
    
}
