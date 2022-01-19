import 'package:get/get.dart';
import 'package:youtube_clone_app/screen/Navigation.dart';
import 'package:youtube_clone_app/widgets/VideoDetail.dart';

class RoutePage {
  static movePage(String pageName) => Get.toNamed(pageName);

  static movePageWithArgument(String pageName, dynamic arguments) =>
      Get.toNamed(pageName, arguments: arguments);

  static const String NAVIGATION_ROUTE = "/navigation";
  // static const String HOME_ROUTE = "/home";
  // static const String EXPLORE_ROUTE = "/explore";
  // static const String SUBSCRIBE_ROUTE = "/subscribe";
  // static const String LIBRARY_ROUTE = "/library";
  static const String VIDEO_DETAIL = "/videoDetail";

  static final List<GetPage> getPageList = [
    GetPage(
      name: NAVIGATION_ROUTE,
      page: () => Navigation(),
    ),
    // GetPage(
    //   name: HOME_ROUTE,
    //   page: () => Home(),
    // ),
    // GetPage(
    //   name: EXPLORE_ROUTE,
    //   page: () => Explore(),
    // ),
    // GetPage(
    //   name: SUBSCRIBE_ROUTE,
    //   page: () => Subscribe(),
    // ),
    // GetPage(
    //   name: LIBRARY_ROUTE,
    //   page: () => Library(),
    // ),
    GetPage(
      name: VIDEO_DETAIL,
      page: () => VideoDetail(),
    ),
  ];
}
