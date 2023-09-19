import 'package:flutter/material.dart';
import 'package:memento_1/home/banner.dart';
import 'package:memento_1/home/category_bar.dart';
import 'package:memento_1/home/search.dart';
import 'package:memento_1/home/top_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memento - 너도 나도 서로 멘토',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

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
