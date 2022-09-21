void main() {
  Future(() => print('f1'))
      .then((_) async => await Future(() => print('f2')))
      .then((_) => print('f3'));
  Future(() => print('f4'));
}
