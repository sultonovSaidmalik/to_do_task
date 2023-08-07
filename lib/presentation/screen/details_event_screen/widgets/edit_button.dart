import 'package:flutter/material.dart';

import '../../../../core/app_routes.dart';
import 'text_description.dart';
class EditButton extends StatelessWidget {
  const EditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => AppRoutes.goToAddEvent(context),
      child:  const Row(
        children: [
          Image(
            image: AssetImage("assets/images/edit.png"),
            height: 15,
            width: 15,
          ),
          TextDescription(
            text: ' Edit',
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500,
            size: 14,
          ),
        ],
      ),
    );
  }
}
