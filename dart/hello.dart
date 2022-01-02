import 'GodrejWashingMachine.dart';

import 'LGWashingMachine/LGMinimalWashingMachine.dart';
import 'LGWashingMachine/LGSemiLoadedWM.dart';
import 'LGWashingMachine/LGWashingMachine.dart';
import 'async.dart';

main() async {
  var lgdefault = LGWashingMachine();
  var lg = LGMinimalWashingMachine();
  lg.price = 100;
  print('Life');
  var async = await Asynchronous();
  print(async.hello);
  print(async.delayedPrint(2, "from asynchronous module"));
  await delayedPrint(5, "i am the one has priority")
      .then((value) => print(value));
  print('Good');
  // lg.runMotorAtSpeed();

  // var lgsemi = LGSemiLoadedWM();
  // lgsemi.loadClothesSemiType();

  // var godrejminimal = GodrejMinimalWashingMachine();
  // godrejminimal.cleanEfficiently();
}

runtheMachine(int rpm) {
  print("i am running at $rpm");
}

Future delayedPrint(int seconds, String msg) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => msg);
}
