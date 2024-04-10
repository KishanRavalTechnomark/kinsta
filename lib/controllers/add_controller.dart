import 'package:get/get.dart';

class AddController extends GetxController {
  // Example of an observable variable
  var addResult = ''.obs;

  // Example of a method to simulate adding functionality
  void add() {
    // Simulate adding functionality (e.g., adding data to a database)
    // For simplicity, let's just update the addResult with a dummy value
    addResult.value = 'Item added successfully';
  }
}
