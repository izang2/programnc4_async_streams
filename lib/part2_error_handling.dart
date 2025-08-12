// Function that simulates an error inside Future.delayed
Future<String> simulateError() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      throw Exception("Something went wrong!");
    },
  );
}

// Main function with try/catch block
Future<void> main() async {
  print("Starting error simulation...");

  try {
    String result = await simulateError();
    print(result); // This will not run if an error occurs
  } catch (e) {
    print("Caught an error: $e");
  }
}