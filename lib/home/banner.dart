import 'package:flutter/material.dart';
import 'package:memento_1/constant.dart';

class MainBanner extends StatefulWidget {
  const MainBanner({super.key});

  @override
  State<MainBanner> createState() => _MainBannerState();
}

class _MainBannerState extends State<MainBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: GREY,
      child: const Center(
        child: Text('상단 배너 (이벤트 / 홍보)'),
      ),
    );
  }
}
