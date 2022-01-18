import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/controller/NavigationController.dart';
import 'package:youtube_clone_app/screen/Explore.dart';
import 'package:youtube_clone_app/screen/Library.dart';
import 'package:youtube_clone_app/screen/Subscribe.dart';

import 'Home.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavigationController());
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bnb(),
    );
  }

  Widget _body() {
    return Obx(() {
      switch (RouteName.values[NavigationController.to.currentIndex.value]) {
        case RouteName.Home:
          return Home();
          break;
        case RouteName.Explore:
          return Explore();
          break;
        case RouteName.Add:
          break;
        case RouteName.Subscribe:
          return Subscribe();
          break;
        case RouteName.Library:
          return Library();
          break;
      }
      return Container();
    });
  }

  Widget _bnb() {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: NavigationController.to.currentIndex.value,
        onTap: (int index) {
          NavigationController.to.changeIndex(index);
        },
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child:
                  SvgPicture.asset("assets/svg/icons/home_off.svg", width: 24),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child:
                  SvgPicture.asset("assets/svg/icons/home_on.svg", width: 24),
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset("assets/svg/icons/compass_off.svg",
                  width: 24),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset("assets/svg/icons/compass_on.svg",
                  width: 24),
            ),
            label: '탐색',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset("assets/svg/icons/plus.svg", width: 37),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child:
                  SvgPicture.asset("assets/svg/icons/subs_off.svg", width: 24),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child:
                  SvgPicture.asset("assets/svg/icons/subs_on.svg", width: 24),
            ),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset("assets/svg/icons/library_off.svg",
                  width: 24),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset("assets/svg/icons/library_on.svg",
                  width: 24),
            ),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
