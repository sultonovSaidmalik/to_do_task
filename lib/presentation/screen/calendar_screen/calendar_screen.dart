import 'package:flutter/material.dart';
import 'package:to_do_task/core/app_routes.dart';
import 'widgets/add_event_widget.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/calendar/calendar_widget.dart';
import 'widgets/event_items_widget.dart';

class CalendarScreen extends StatefulWidget {
  static const id = "calendar/";

  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20 ,right: 20),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Calendar(
                changeDate: (e) {
                  selectedDateTime = e;
                },
              ),
            ),
            AddEventWidget(
              onTap: () => AppRoutes.goToAddEvent(context, selectedDateTime),
            ),
            const SizedBox(height: 10),

            /// Event Title
            const Expanded(
              flex: 5,
              child: EventItemsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
