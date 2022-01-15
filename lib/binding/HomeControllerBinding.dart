import 'package:get/get.dart';
import 'package:youtube_clone_app/controller/HomeController.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
