import 'package:get/get.dart';
import 'package:youtube_clone_app/widgets/AddBottomSheet.dart';

// enum 열거 타입
enum RouteName { Home, Explore, Add, Subscribe, Library }

class NavigationController extends GetxController {
  static NavigationController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changeIndex(int index) {
    if (RouteName.values[index] == RouteName.Add) {
      _showBottomSheet();
    } else {
      // RxInt에 int를 할당할 수 없으니 괄호를 사용
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(AddBottomSheet());
  }
}
