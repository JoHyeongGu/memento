import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterButton extends StatefulWidget {
  EnterButton({
    super.key,
    required this.before,
    required this.after,
  });
  String before;
  String after;

  @override
  State<EnterButton> createState() => _EnterButtonState();
}

class _EnterButtonState extends State<EnterButton> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(widget.before),
      width: 400,
    );
  }
}
