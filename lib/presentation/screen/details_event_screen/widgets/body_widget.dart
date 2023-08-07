import 'package:flutter/material.dart';

import 'delete_button.dart';
import 'text_description.dart';
class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),

            /// Event Reminder
            TextDescription(
              text: 'Reminder',
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
              size: 16,
            ),
            Spacer(),

            /// Event Reminder Time
            TextDescription(
              text: '15 minutes befor',
              color: Color(0xFF7C7B7B),
              fontWeight: FontWeight.w500,
              size: 16,
            ),
            Spacer(),

            /// Event Description
            TextDescription(
              text: 'Description',
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
              size: 16,
            ),
            Spacer(),

            /// Event Description Title
            TextDescription(
              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel ex sit amet neque dignissim mattis non eu est. Etiam pulvinar est mi, et porta magna accumsan nec. Ut vitae urna nisl. Integer gravida sollicitudin massa, ut congue orci posuere sit amet. Aenean laoreet egestas est, ut auctor nulla suscipit non. ',
              color: Color(0xFF7C7B7B),
              fontWeight: FontWeight.w600,
              size: 16,
            ),
            Spacer(flex: 15),

            /// Delete Button
            DeleteButton(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
