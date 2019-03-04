import 'package:flutter/material.dart';

class RoundOptionButton extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final VoidCallback onPressed;

  RoundOptionButton({
    this.text,
    this.color,
    this.size,
    this.onPressed,
  });

  RoundOptionButton.large({this.text, this.color, this.onPressed})
      : size = 75.0;

  RoundOptionButton.small({this.text, this.color, this.onPressed})
      : size = 50.0;

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              new BoxShadow(color: const Color(0x11000000), blurRadius: 10.0)
            ]),
        child: new RawMaterialButton(
          shape: new CircleBorder(),
          elevation: 0.0,
          child: new Text(text),
          onPressed: onPressed,
        ));
  }
}
