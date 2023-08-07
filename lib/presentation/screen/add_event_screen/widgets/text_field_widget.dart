import 'package:flutter/material.dart';

class EventTextField extends StatelessWidget {
  const EventTextField({
    super.key,
    required this.controller,
    this.maxLines,
    this.widget,
  });

  final TextEditingController? controller;
  final int? maxLines;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: widget,
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.all(15),
        hintStyle: const TextStyle(
          fontFamily: "Poppins",
          color: Colors.grey,
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
