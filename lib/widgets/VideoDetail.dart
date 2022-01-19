import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class VideoDetail extends StatelessWidget {
  String videoId = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(
            child: _description(),
          ),
        ],
      ),
    );
  }

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _titleZone(),
          divider(),
          _descriptionZone(),
          _buttonZone(),
          divider(),
          _creatorZone(),
          divider(),
        ],
      ),
    );
  }

  // 영상 제목, 조회수, 등록일
  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 11.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '[회사 브이로그] 피곤하지만 알찼던 하루 ',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                "조회수 33만회",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Text(" · "),
              Text(
                "10일 전",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 영상 설명란
  Widget _descriptionZone() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
      child: Text(
        "안녕하세요 여러분, 리우디우입니다. 아무도 보지 않을 것 같지만 이렇게 저의 일상을 올려봅니다. 이거 본 사람은 아무 댓글이나 달아주세여 please ~",
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  // 좋아요, 싫어요, 공유, 저장 버튼
  Widget _buttonZone() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(45, 0, 45, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _button('like', '1733'),
          _button('dislike', '싫어요'),
          _button('share', '공유'),
          _button('save', '저장'),
        ],
      ),
    );
  }

  // 크리에이터 정보
  Widget _creatorZone() {
    return Container(
      padding: const EdgeInsets.fromLTRB(11, 5, 0, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.5),
                backgroundImage: Image.network(
                        "https://lh3.googleusercontent.com/ogw/ADea4I7Y6Jt6WjZeBl3gH1XNCfDcL_sK_FUFN1Y4P2Lr=s32-c-mo")
                    .image,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '리우디우',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '구독자 21.7만명',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '구독',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  // 버튼 위젯
  Widget _button(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset('assets/svg/icons/$iconPath.svg', width: 30),
        SizedBox(height: 5),
        Text('$text'),
      ],
    );
  }

  // 구분선
  Widget divider() {
    return Divider(
        height: 10, thickness: 1, color: Colors.black.withOpacity(0.1));
  }
}
