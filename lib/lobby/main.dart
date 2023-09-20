import 'package:flutter/material.dart';
import 'package:memento/lobby/enter_button.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key});

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  late bool loading;
  bool entering = false;
  String enterText = '';

  @override
  void initState() {
    super.initState();
    loading = true;
    Future.delayed(const Duration(seconds: 2), () {
      loading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
              opacity: loading ? 0 : 1,
              duration: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedContainer(
                    padding: EdgeInsets.only(top: entering ? 0 : 250),
                    duration: const Duration(milliseconds: 500),
                    width: 400,
                    child: entering ? Image(
                      image: AssetImage(entering
                          ? 'asset/web_btn.gif'
                          : 'asset/web_btn.png'),
                    ) : Stack(
                      children: [
                        Image(
                          image: AssetImage(entering
                              ? 'asset/web_btn.gif'
                              : 'asset/web_btn.png'),
                        ),
                        TextButton(
                            onPressed: () {
                              if (!entering) {
                                entering = true;
                                setState(() {});
                                Future.delayed(const Duration(seconds: 7),
                                    () {
                                  Navigator.of(context).pushNamed('/web');
                                });
                              }
                            },
                            onHover: (bool hover) {
                              if (hover) {
                                enterText = 'Web 접속';
                                setState(() {});
                              } else {
                                enterText = '';
                                setState(() {});
                              }
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            child: SizedBox(
                              width: 400,
                              height: 270,
                              child: Center(
                                child: Text(
                                  enterText,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                loading = !loading;
                setState(() {});
              },
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: entering ? 0 : 1,
                child: AnimatedContainer(
                  padding: EdgeInsets.only(bottom: loading ? 0 : 200),
                  duration: const Duration(milliseconds: 500),
                  width: loading ? 400 : 300,
                  child: const Image(
                    image: AssetImage('asset/logo.gif'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
