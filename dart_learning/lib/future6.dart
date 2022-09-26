void main() async{
  await Future(() => print('f1'))
      .then((_) async => await Future(() => print('f2')))
      .then((_) => print('f3'));
  Future(() => print('f4'));
}

// f1 f2 f3 f4