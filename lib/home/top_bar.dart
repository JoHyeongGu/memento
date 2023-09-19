import 'package:flutter/material.dart';
import 'package:memento/constant.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 120),
            child: Image(image: AssetImage('asset/logo.png')),
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
