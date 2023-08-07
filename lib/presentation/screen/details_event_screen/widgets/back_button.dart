import 'package:flutter/material.dart';

import '../../../../core/app_routes.dart';
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => AppRoutes.goToCalendar(context),
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Color(0xFFFFFFFF),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
      ),
    );
  }
}
