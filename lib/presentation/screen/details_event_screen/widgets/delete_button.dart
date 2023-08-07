import 'package:flutter/material.dart';
class DeleteButton extends StatelessWidget {
  const DeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xFFFEE8E9),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/delete.png"),
                height: 17,
                width: 15,
              ),
              Text(
                "Delete Event",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF292929),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
