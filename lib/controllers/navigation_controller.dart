import 'package:get/get.dart';

class NavigationController extends GetxController {
  //Using GetX, I'm following Observable Design Pattern for state management

  //Singleton instance
  static NavigationController instance = Get.find();

  //Created observable variable to keep track of navigation bar's current index
  RxInt _currentIndex = 0.obs;

  //Getter
  int get currentIndex => _currentIndex.value;

  //Setter
  set currentIndex(int value) {
    _currentIndex.value = value;
    update();
  }
}
