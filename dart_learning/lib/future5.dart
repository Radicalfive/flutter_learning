Future<String> fetchContent() =>
    Future<String>.delayed(Duration(seconds: 2), () => "Hello")
        .then((x) => "$x 2022");

func() async => print(await fetchContent());

void main() {
  print("func before");
  func();
  print("func after");
}
