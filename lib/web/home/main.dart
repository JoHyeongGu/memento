import 'package:flutter/material.dart';
import 'package:memento/web/home/banner.dart';
import 'package:memento/web/home/category_bar.dart';
import 'package:memento/web/home/search.dart';
import 'package:memento/web/home/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(child: TopBar()),
          Flexible(child: MainBanner()),
          Flexible(child: CategoryBar()),
          Flexible(child: Search()),
        ],
      ),
    );
  }
}
