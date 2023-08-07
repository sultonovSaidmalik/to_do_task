import 'package:flutter/material.dart';
import '../../details_event_screen/widgets/text_description.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Column(
        children: [
          TextDescription(
            text: 'Sunday',
            color: Color(0xFF292929),
            fontWeight: FontWeight.w600,
            size: 14,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextDescription(
                text: '28 September 2021',
                color: Color(0xFF292929),
                fontWeight: FontWeight.w400,
                size: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF000000),
                size: 15,
              ),
            ],
          ),
        ],
      ),
      actions: const [
        Image(
          image: AssetImage("assets/images/notification.png"),
          height: 25,
          width: 25,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 70);
}
