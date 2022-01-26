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
      TNEBMailHandler(
      consumerID: 10, mailSender: TNEBMailSender(consumerID: null));
  @override
  calculateTotalBill() {
    if (numberOfUnits < 100) {
      print("your have no bills at the moment");
    } else {
      print(
          "your total bill is ${(numberOfUnits - subsidyUnitsCount) * perUnitPrice}");

      mailHandler.consumerID = 10;

      mailHandler.mailSender.consumerID = mailHandler.consumerID;
      mailHandler.mailSender.sendMail();
    }
  }
}

class TNEBMailHandler {
  var consumerID;

  TNEBMailSender mailSender = TNEBMailSender(consumerID: 0);
  TNEBMailHandler({
    required this.consumerID,
    required this.mailSender,
  });
}

class TNEBMailSender {
  var consumerID;
  TNEBMailSender({
    required this.consumerID,
  });
  sendMail() {
    print("sending mail to customer id $consumerID");
  }
}

main() {
  var ebbillcal = TNEBBillCalculator();
  ebbillcal.numberOfUnits = 120;
  ebbillcal.perUnitPrice = 2.5;
  ebbillcal.subsidyUnitsCount = 50;
  ebbillcal.calculateTotalBill();
}
