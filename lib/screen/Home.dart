import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/widgets/CustomAppBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomAppBar(),
            backgroundColor: Colors.white,
            // floating을 통해 스크롤을 위로 올릴 때마다 앱바가 나오게 할 수 있다.
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: 200,
                    color: Colors.grey,
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
