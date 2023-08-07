import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ColorDropDownButton extends StatefulWidget {
  const ColorDropDownButton({Key? key}) : super(key: key);

  @override
  State<ColorDropDownButton> createState() => _ColorDropDownButtonState();
}

class _ColorDropDownButtonState extends State<ColorDropDownButton> {
  String selectedColor = 'Blue'; // Initial selected color
  List<String> colorOptions = [
    'Blue',
    'Red',
    'Yellow',
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: DropdownButton<String>(
          underline: const SizedBox(),
          value: selectedColor,
          icon: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(
              CupertinoIcons.chevron_down,
              color: Colors.blue,
              size: 25,
            ),
          ),
          elevation: 16,
          borderRadius: BorderRadius.circular(8),
          onChanged: (String? newvalue) {
            setState(() {
              selectedColor = newvalue!;
            });
          },
          items: colorOptions.map((String color) {
            return DropdownMenuItem<String>(
              value: color,
              child: Container(
                width: 25,
                height: 25,
                color: _getColor(color),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
  Color _getColor(String colorName) {
    switch (colorName) {
      case 'Blue':
        return Colors.blue;
      case 'Red':
        return Colors.red;
      case 'Yellow':
        return Colors.orange;
      default:
        return Colors.black;
    }
  }
}
