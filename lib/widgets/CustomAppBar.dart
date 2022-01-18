import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _actions(),
        ],
      ),
    );
  }

  Widget _logo() {
    return Container(
        width: 140, child: Image.asset('assets/images/youtube_logo.png'));
  }

  Widget _actions() {
    return Container(
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 23,
              child: SvgPicture.asset('assets/svg/icons/bell.svg'),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 35,
              height: 30,
              child: SvgPicture.asset('assets/svg/icons/search.svg'),
            ),
          ),
          CircleAvatar(
              backgroundImage: Image.network(
                      "https://lh3.googleusercontent.com/ogw/ADea4I7Y6Jt6WjZeBl3gH1XNCfDcL_sK_FUFN1Y4P2Lr=s32-c-mo")
                  .image),
        ],
      ),
    );
  }
}
