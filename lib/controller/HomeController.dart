import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changeIndex(int index) {
    // RxInt에 int를 할당할 수 없으니 괄호를 사용
    currentIndex(index);
  }
}
