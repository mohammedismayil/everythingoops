abstract class APIView {
  APIInteractor interactor;
  APIView({
    required this.interactor,
  });
  onSuccess(String message);
  onFailure();
}

abstract class APIInteractor {
  APIView view;
  APIInteractor({
    required this.view,
  });

  getData(int api) {}
}

class UpdateView extends APIInteractor {
  // UpdateView() : super();

  

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

class MyPage extends UpdateView {
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
    // interactor.getData(0);
  }

 
}
