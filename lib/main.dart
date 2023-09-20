import 'package:flutter/material.dart';
import 'package:memento/lobby/main.dart';
import 'package:memento/web/home/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memento - 다양한 배움의 장터',
      initialRoute: '/',
      routes: {
        '/': (context) => const LobbyPage(),
        '/web': (context) => const HomePage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
    );
  }
}