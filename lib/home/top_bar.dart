import 'package:flutter/material.dart';
import 'package:memento_1/constant.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Image.asset('logo.png', width: 110),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: GREY,
                onPrimary: Colors.black,
              ),
              child: const Text('로그인 버튼 / 마이페이지 로고'),
            ),
          )
        ],
      ),
    );
  }
}
