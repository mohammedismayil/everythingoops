abstract class APIInteractor {
  late APIView view;
  APIInteractor({
    required this.view,
  });

  getData(int api) {}
}

abstract class APIView {
  late APIInteractor interactor;

  onSuccess(String message);
  onFailure();
}

class View extends APIView {
  @override
  // TODO: implement interactor
  APIInteractor get interactor => super.interactor;
  @override
  onFailure() {
    // TODO: implement onFailure
    throw UnimplementedError();
  }

  View();
  @override
  onSuccess(String message) {
    // TODO: implement onSuccess
    throw UnimplementedError();
  }
}

class Interactor implements APIInteractor {
  late APIView view;

  Interactor({
    required this.view,
  });
  // UpdateView(
  //   this.view,
  // ) : super(view: view);

  @override
  onFailure() {
    // TODO: implement onFailure
    throw UnimplementedError();
  }

  @override
  onSuccess(String message) {
    // TODO: implement onSuccess
    throw UnimplementedError();
  }

  @override
  getData(int api) {
    // TODO: implement getData
    print("coming to getdata");
    if (api == 0) {
      view.onSuccess("Hi there");
    } else {}
  }
}

class MyPage implements APIView {
  late APIInteractor interactor;
  MyPage.withIn({required this.interactor});
  MyPage();
  @override
  onFailure() {
    // TODO: implement onFailure
    throw UnimplementedError();
  }

  @override
  onSuccess(String message) {
    // TODO: implement onSuccess
    print("Yasss We have done it");

    return "We have done it";
  }

  didload() {
    print("coming to didload");
    interactor.getData(0);
  }
}

main() {
  // Interactor interactor = Interactor(view: APIView(interactor: in));

  MyPage mypage = new MyPage();





  MyPage myAnotherPage =
      new MyPage.withIn(interactor: Interactor(view: mypage));
  myAnotherPage.didload();
}
// bd1aSoe0crOtM2HUNcAzZepnZ36yEfjRP2uxKm2ZL7J5vX6