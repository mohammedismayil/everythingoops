main() {
  var lg = LGMinimalWashingMachine();
  lg.runMotorAtSpeed();
  var godrejminimal = GodrejMinimalWashingMachine();
  godrejminimal.cleanEfficiently();
}

runtheMachine(int rpm) {
  print("i am running at $rpm");
}

abstract class WashingMachine {
  wash();
  rinse();
  soak();
}

class LGMinimalWashingMachine extends WashingMachine {
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
    print("motor running at certain speed particularly for lg machines");
  }
}

class GodrejMinimalWashingMachine extends WashingMachine {
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

  cleanEfficiently() {
    print("i am cleaning in different method ");
  }
}
