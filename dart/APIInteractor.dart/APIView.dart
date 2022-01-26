abstract class APIView {
  APIInteractor interactor;
  APIView({
    required this.interactor,
  });
  onSuccess(String message);
  onFailure();
}

abstract class APIInteractor {
  late APIView view;
  APIInteractor({
    required this.view,
  });

  getData(int api) {}
}

extension APIInteractor {
  late APIView view;
  UpdateView(
    this.view,
  ) : super(view: view);
  
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

class MyPage extends APIView {
  late APIInteractor interactor;
  MyPage(
    this.interactor,
  ) : super(interactor: interactor);

  @override
  onFailure() {
    // TODO: implement onFailure
    throw UnimplementedError();
  }

  @override
  onSuccess(String message) {
    // TODO: implement onSuccess
    print("We have done it");

    return "We have done it";
  }

  didload() {
    print("coming to didload");
    interactor.getData(0);
  }
}

main() {
  APIInteractor interactor;
  MyPage mypage = new MyPage(interactor);
  mypage.didload();
}
// bd1aSoe0crOtM2HUNcAzZepnZ36yEfjRP2uxKm2ZL7J5vX6