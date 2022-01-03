abstract class APIView {
  var interactor = APIInteractor;
  Function onSuccess();
  Function onFailure();
}

class APIInteractor {
  static getData() {
    return "hello";
  }
}

class mypage extends APIView {
  @override
  set interactor(Type _interactor) {
    // TODO: implement interactor
    super.interactor = _interactor;
  }

  @override
  Function onFailure() {
    // TODO: implement onFailure
    throw UnimplementedError();
  }

  @override
  Function onSuccess() {
    // TODO: implement onSuccess
    throw UnimplementedError();
  }

  didload() {
    interactor.getData();
  }
}
