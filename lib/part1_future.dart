// Function that uses Future.delayed to return a message after 2 seconds
Future<String> delayedMessage() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Papap Sir!",
  );
}

// Async main function
Future<void> main() async {
  print("Waiting for the message...");
  String message = await delayedMessage();
  print(message);
}