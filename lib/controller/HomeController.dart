import 'package:get/get.dart';
import 'package:youtube_clone_app/models/YoutubeVideoResult.dart';
import 'package:youtube_clone_app/repository/YoutubeRepository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  // Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult().obs;

  @override
  void onInit() {
    _videoLoad();
    super.onInit();
  }

  void _videoLoad() async {
    YoutubeVideoResult? youtubeVideoResult =
        await YoutubeRepository.to.loadVideos();
    // if (youtubeVideoResult != null &&
    //     youtubeVideoResult.items != null &&
    //     youtubeVideoResult.items.length > 0) {
    //   youtubeResult(youtubeVideoResult);
    // }
  }
}
