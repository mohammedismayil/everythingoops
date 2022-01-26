abstract class BillCalculator {
  calculateTotalBill();
}

class EBBillCalculator implements BillCalculator {
  var perUnitPrice;
  var numberOfUnits;
  @override
  calculateTotalBill() {
    print("your total bill is ${numberOfUnits * perUnitPrice}");
  }
}

class TNEBBillCalculator implements BillCalculator {
  var perUnitPrice;
  var numberOfUnits;
  var subsidyUnitsCount;
  var consumerType;
  TNEBMailHandler mailHandler =
      TNEBMailHandler(consumerID: 10, mailSender: TNEBMailSender());
  @override
  calculateTotalBill() {
    if (numberOfUnits < 100) {
      print("your have no bills at the moment");
    } else {
      print(
          "your total bill is ${(numberOfUnits - subsidyUnitsCount) * perUnitPrice}");

      mailHandler.consumerID = 10;

      mailHandler.sendMail();
    }
  }
}

class TNEBMailHandler implements TNEBMailSender {
  var consumerID;

  TNEBMailSender mailSender = TNEBMailSender();
  TNEBMailHandler({
    required this.consumerID,
    required this.mailSender,
  });

  @override
  sendMail() {
    print("sending mail to customer id $consumerID");
  }
  // sendMail() {
  //   print("sending mail to customer id $consumerID");
  // }
}

class TNEBMailSender {
  sendMail() {}
}

main() {
  var ebbillcal = TNEBBillCalculator();
  ebbillcal.numberOfUnits = 120;
  ebbillcal.perUnitPrice = 2.5;
  ebbillcal.subsidyUnitsCount = 50;
  ebbillcal.calculateTotalBill();
}
