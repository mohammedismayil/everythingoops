class Asynchronous {
  hello() async {
    return (print('something exciting is going to happen here...'));
  }

  Future delayedPrint(int seconds, String msg) {
    final duration = Duration(seconds: seconds);
    return Future.delayed(duration).then((value) => msg);
  }
}
