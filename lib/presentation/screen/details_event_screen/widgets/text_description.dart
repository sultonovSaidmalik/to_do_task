import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  const TextDescription({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.size,
  });

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Poppins",
        fontWeight: fontWeight,
      ),
    );
  }
}
