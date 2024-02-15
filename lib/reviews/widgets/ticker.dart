class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 7), (x) => ticks - x - 1)
        .take(ticks);
  }
}
