import 'package:get/get.dart';

class HomeController extends GetxController {
  // Add your controller logic here
  var tabIndex = 0.obs; // Example of an observable variable

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
