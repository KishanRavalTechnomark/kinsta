import 'package:get/get.dart';

class ReelsController extends GetxController {
  // Example of an observable variable
  var reelData = [].obs;

  // Example of a method to fetch reel data
  void fetchReels() {
    // Simulate fetching reel data (e.g., from an API)
    // For simplicity, let's just set a dummy reelData
    reelData.value = ['Reel 1', 'Reel 2', 'Reel 3'];
  }
}
