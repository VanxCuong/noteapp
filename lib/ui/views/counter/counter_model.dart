class Counter {
  //
  int _counter = 0;


  int get counter => _counter;

  String _imgUrl = "assets/images/francex.jpg";

  String get imgUrl => _imgUrl;

  void increment() {
    _counter++;
    print(_counter);
  }
}