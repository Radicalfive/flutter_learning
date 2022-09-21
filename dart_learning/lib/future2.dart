Future<String> getContent() =>
    Future<String>.delayed(Duration(seconds: 2), () => 'hello')
        .then((x) => '$x === 2022');

void main() async {
  String res = await getContent();
  print(res);
}
