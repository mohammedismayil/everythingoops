// import 'dart:ffi';

class Employee {
  void checkIn() {
    print("check in");
  }

  void checkOut() {
    print("check in");
  }
}

abstract class CommonMedical {
  checkTemperature() {}
  injectPatient() {}
}

class Doctor extends Employee with CommonMedical {
  doOpenHeartSurgery() {
    print("opening sweet heart");
  }

  @override
  injectPatient() {
    // TODO: implement injectPatient
    print("doctor injecting patient");
  }
}

// class PhysioDoctor implements CommonMedical{

// }

class Nurse extends Employee {
  checkTemperature() {
    print("checking temperatue");
  }

  injectPatient() {
    print("injecting patient");
  }

  giveToken() {
    print("giving token");
  }
}

class AmbulanceDriver {
  callHospital() {
    print("heading to hospital");
  }
}

void main() {
  Doctor saravanan = Doctor();
  saravanan.checkIn();
  saravanan.doOpenHeartSurgery();
  saravanan.checkTemperature();
  saravanan.injectPatient();
  Nurse mary = Nurse();

  mary.checkIn();
  mary.injectPatient();
  mary.checkTemperature();
  mary.giveToken();

  // List<Map<String, String>> studentList = [
  //   {"name": "maharaha"},
  //   {"name": "john"},
  //   {"name": "Vladimir"}
  // ];

  // for (var item in studentList) {
  //   print(item);
  // }

  // for (int i = 0; i < 10; i++) {
  //   print(i);
  //   print(studentList[0]["name"]);
  // }
}
