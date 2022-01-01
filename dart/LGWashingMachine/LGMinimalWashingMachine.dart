import 'LGWashingMachine.dart';

class LGMinimalWashingMachine extends LGWashingMachine {
  var price = 10;
  @override
  rinse() {
    // TODO: implement rinse
    throw UnimplementedError();
  }

  @override
  soak() {
    // TODO: implement soak
    throw UnimplementedError();
  }

  @override
  wash() {
    // TODO: implement wash
    throw UnimplementedError();
  }

  runMotorAtSpeed() {
    print("motor running at certain speed by using the price of $price");
  }
}
