import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailInfo(),
        ],
      ),
    );
  }

  // 동영상 썸네일
  Widget _thumbnail() {
    return Container(
      height: 200,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  // 영상 상세 정보
  Widget _simpleDetailInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 10),
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.5),
                backgroundImage: Image.network(
                        "https://lh3.googleusercontent.com/ogw/ADea4I7Y6Jt6WjZeBl3gH1XNCfDcL_sK_FUFN1Y4P2Lr=s32-c-mo")
                    .image),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "[회사 브이로그] 피곤하지만 알찼던 하루 asdasdadssd ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          maxLines: 2, // 최대 두줄 설정
                          overflow: TextOverflow.ellipsis, // 제목이 너무 길면 ... 처리
                        ),
                      ),
                      IconButton(
                        alignment: Alignment.topCenter,
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "리우디우 ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                      Text(" · "),
                      Text(
                        "조회수 33만회",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                      Text(" · "),
                      Text(
                        "10일 전",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
