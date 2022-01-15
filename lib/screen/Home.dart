import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:youtube_clone_app/controller/HomeController.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      bottomNavigationBar: _bnb(),
    );
  }

  Widget _bnb() {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: HomeController.to.currentIndex.value,
        onTap: (int index) {
          HomeController.to.changeIndex(index);
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
