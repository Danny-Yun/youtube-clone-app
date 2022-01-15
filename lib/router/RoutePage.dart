import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/Home.dart';

class RoutePage {
  static const String HOME_ROUTE = "/home";

  static movePage(String pageName) => Get.toNamed(pageName);

  static movePageWithArgument(String pageName, dynamic arguments) =>
      Get.toNamed(pageName, arguments: arguments);

  static final List<GetPage> getPageList = [
    GetPage(
      name: HOME_ROUTE,
      page: () => Home(),
    ),
  ];
}
