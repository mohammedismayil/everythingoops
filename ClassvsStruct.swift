struct VolvoCar{
    var price = 10
}
class BMWCar{
    var price = 10
}
var iVolvocar = VolvoCar()
iVolvocar.price = 20
var iVolvocar2 = iVolvocar
iVolvocar2.price = 30
var iVolvocar3 = iVolvocar2
iVolvocar3.price = 40

var iBMWCar = BMWCar()
iBMWCar.price = 20
var iBMWCar2 = iBMWCar
iBMWCar2.price = 30
var iBMWCar3 = iBMWCar2
iBMWCar3.price = 40
print(iVolvocar.price)
print(iVolvocar2.price)
print(iVolvocar3.price)
print(iBMWCar.price)
print(iBMWCar2.price)
print(iBMWCar3.price)
