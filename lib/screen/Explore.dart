import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: Text('탐색'),
    );
  }
}
