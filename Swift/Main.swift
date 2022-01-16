let newVehicle =  Bike();

newVehicle.didLoad()


class Bike: APIProtocol{
var interactor: APIInteractor?
func onSuccess() {
print("success from bike")
}
func onFailure() {
print("damn these coding- from bike class")
}

func didLoad(){
   
    self.interactor?.getData()   
}


init() {
    //  self.interactor = APIInteractorClass(view:self)
    self.interactor = APIInteractorClass.init(view: self)
}



   
}

protocol APIProtocol{
    var interactor: APIInteractor?{get set}
    func onSuccess()
    func onFailure()
}

protocol APIInteractor{
    var view:APIProtocol?{get set}
    func sample()
    
}
extension APIInteractor{
    func getData(){
self.view?.onFailure()
    }


//  init(view:APIProtocol){
//     self.view = view
// }
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
