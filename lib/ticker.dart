class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 3), (x) => ticks - x - 1)
        .take(ticks);
  }
}
