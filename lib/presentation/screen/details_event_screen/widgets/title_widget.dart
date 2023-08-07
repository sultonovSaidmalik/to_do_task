import 'package:flutter/cupertino.dart';
import 'back_button.dart';
import 'edit_button.dart';
import 'text_description.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          color: Color(0xFF009FEE),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Back Button
                  BackButtonWidget(),

                  /// Edit Button
                  EditButton(),
                ],
              ),
              Spacer(flex: 3),

              /// Event Name
              TextDescription(
                text: 'Watching Football ',
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
                size: 26,
              ),
              Spacer(),

              /// Event Title
              TextDescription(
                text: 'Manchester United vs Arsenal (Premiere League)',
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                size: 12,
              ),
              Spacer(),

              /// Event Time
              Row(
                children: [
                  Icon(
                    CupertinoIcons.time_solid,
                    color: Color(0xFFFFFFFF),
                    size: 20,
                  ),
                  TextDescription(
                    text: ' 17:00 - 18:30',
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w500,
                    size: 12,
                  ),
                ],
              ),
              Spacer(),

              /// Event Location
              Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Color(0xFFFFFFFF),
                    size: 20,
                  ),
                  Text(
                    ' Stamford Bridge',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
