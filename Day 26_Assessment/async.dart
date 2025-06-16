import 'dart:async';

void main() async {
  print("🔄 Fetch process started...");

  try {
    // Await the async function and wait until it completes
    String data = await fetchUserData(shouldFail: false); // set to true to simulate error
    print("✅ Data fetched successfully: $data");
  } catch (e) {
    // Catch and print any errors that occur
    print("❌ Error occurred: $e");
  }

  print("🏁 Fetch process finished.");
}

// This function returns a Future that completes after 3 seconds
Future<String> fetchUserData({bool shouldFail = false}) async {
  await Future.delayed(Duration(seconds: 3)); // Simulate a delay

  if (shouldFail) {
    throw Exception("Unable to fetch user data from the server");
  }

  return "User: Dharshini | Age: 21";
}
