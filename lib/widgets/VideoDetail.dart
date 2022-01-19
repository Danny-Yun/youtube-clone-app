import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoDetail extends StatelessWidget {
  String videoId = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$videoId'),
    );
  }
}
