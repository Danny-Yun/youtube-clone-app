import 'package:get/get.dart';
import 'package:youtube_clone_app/controller/NavigationController.dart';

class NavigationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
  }
}
