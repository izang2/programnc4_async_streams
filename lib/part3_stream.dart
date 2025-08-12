Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print("Starting Stream example...");
  await for (var number in numberStream()) {
    print("Received: $number");
  }
}