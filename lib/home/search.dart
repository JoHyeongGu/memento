import 'package:flutter/material.dart';
import 'package:memento_1/constant.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 580,
        height: 52,
        decoration: const BoxDecoration(
            color: GREY, borderRadius: BorderRadius.all(Radius.circular(18))),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const TextField(
          style: TextStyle(fontSize: 16),
          decoration: InputDecoration(
            hintText: '멘토링 검색창 - 검색은 제목 기준?',
            iconColor: Colors.grey,
            icon: Icon(
              Icons.search,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
