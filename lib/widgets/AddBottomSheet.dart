import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18), topRight: Radius.circular(18)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(17, 8, 3, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            SizedBox(height: 10),
            _itemButton(
              'upload',
              '동영상 업로드',
              20,
              () => print('업로드 ㄱㄱ'),
            ),
            SizedBox(height: 17),
            _itemButton(
              'broadcast',
              '실시간 스트리밍 시작',
              30,
              () => print('스트리밍 레스기'),
            ),
            SizedBox(height: 17),
            _itemButton(
              'wall-clock',
              'Shorts 동영상 만들기',
              20,
              () => print('shorts add'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '만들기',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }

  Widget _itemButton(String icon, String label, double size, Function onTap) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.withOpacity(0.3)),
            child: Center(
              child: Container(
                height: size,
                width: size,
                child: SvgPicture.asset('assets/svg/icons/$icon.svg'),
              ),
            ),
          ),
          SizedBox(width: 17),
          Text(label, style: TextStyle(fontSize: 17)),
        ],
      ),
    );
  }
}
