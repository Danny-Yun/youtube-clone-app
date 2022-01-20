import 'package:get/instance_manager.dart';
import 'package:youtube_clone_app/controller/HomeController.dart';
import 'package:youtube_clone_app/repository/YoutubeRepository.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.put(YoutubeRepository(), permanent: true);
  }
}
