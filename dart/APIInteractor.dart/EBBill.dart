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
  TNEBMailHandler mailHandler = TNEBMailHandler(
      consumerID: 10, mailSender: TNEBMailSender(consumerID: null));

  TNEBMailHandler mailHandlerWithComposer =
      TNEBMailHandler.withComposer(composerId: 12, composerName: "mozilla");
  @override
  calculateTotalBill() {
    if (numberOfUnits < 100) {
      print("your have no bills at the moment");
    } else {
      print(
          "your total bill is ${(numberOfUnits - subsidyUnitsCount) * perUnitPrice}");

      mailHandlerWithComposer.mailComposer.composeMail();

      mailHandlerWithComposer.mailSender.sendMail();
      // mailHandler.consumerID = 10;

      // mailHandler.mailSender.consumerID = mailHandler.consumerID;
      // mailHandler.mailSender.sendMail();
    }
  }
}

class TNEBMailHandler {
  var consumerID;

  var composerId;
  var composerName;

  TNEBMailSender mailSender = TNEBMailSender(consumerID: 0);
  TNEBMailComposer mailComposer = TNEBMailComposer(consumerID: 0);
  TNEBMailHandler({
    required this.consumerID,
    required this.mailSender,
  });
  TNEBMailHandler.withComposer({
    required this.composerId,
    required this.composerName,
  });
}

class TNEBMailComposer {
  var consumerID;
  TNEBMailComposer({
    required this.consumerID,
  });
  composeMail() {
    print("composing mail to customer id $consumerID");
  }
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
  Map userDict = {};
  userDict = {"name": "jack", "age": "23", "location": "india"};
  Map rohan = {"name": "rohan", "age": "22", "location": "Chandigarh,India"};
  print(userDict.keys);

  List<Map> userList = [];

  userList.add(userDict);

  print(userList);
  ebbillcal.numberOfUnits = 120;
  ebbillcal.perUnitPrice = 2.5;
  ebbillcal.subsidyUnitsCount = 50;
  ebbillcal.calculateTotalBill();
}
