import 'package:get/get.dart';
import 'package:youtube_clone_app/models/YoutubeVideoResult.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  Future<YoutubeVideoResult?> loadVideos() async {
    String url =
        "/youtube/v3/search?part=snippet&channelId=UC95bEkaIgwhxSjSsdMFXYGg&maxResults=10&order=date&type=video&videoDefinition=high&key=AIzaSyDP6sjLQqrZqgqrU7xSrcow8hwT-eMjHTk";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      if (response.body['items'] != null && response.body['items'].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      }
      print(response.body["items"]);
    }
  }
}
