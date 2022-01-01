import 'GodrejWashingMachine.dart';
import 'LGWashingMachine.dart';

main() {
  var lg = LGMinimalWashingMachine();
  lg.runMotorAtSpeed();
  var godrejminimal = GodrejMinimalWashingMachine();
  godrejminimal.cleanEfficiently();
}

runtheMachine(int rpm) {
  print("i am running at $rpm");
}
