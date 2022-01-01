import 'GodrejWashingMachine.dart';

import 'LGWashingMachine/LGMinimalWashingMachine.dart';
import 'LGWashingMachine/LGSemiLoadedWM.dart';
import 'LGWashingMachine/LGWashingMachine.dart';

main() {
  var lgdefault = LGWashingMachine();
  var lg = LGMinimalWashingMachine();
  lg.price = 100;
  lg.runMotorAtSpeed();

  var lgsemi = LGSemiLoadedWM();
  lgsemi.loadClothesSemiType();

  var godrejminimal = GodrejMinimalWashingMachine();
  godrejminimal.cleanEfficiently();
}

runtheMachine(int rpm) {
  print("i am running at $rpm");
}
