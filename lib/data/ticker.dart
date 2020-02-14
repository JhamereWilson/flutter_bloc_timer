
class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}


//The ticker is the data source for the application. It will "expose" a stream of ticks hat we can react to.