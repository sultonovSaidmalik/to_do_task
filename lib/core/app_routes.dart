import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../presentation/screen/add_event_screen/add_event_screen.dart';
import '../presentation/screen/calendar_screen/calendar_screen.dart';
import '../presentation/screen/details_event_screen/details_event_screen.dart';

class AppRoutes {
  AppRoutes._();

  static String get initialRoute => CalendarScreen.id;

  static final routes = {
    CalendarScreen.id: (context) => const CalendarScreen(),
    DetailsScreen.id: (context) => const DetailsScreen(),
  };

  static goToAddEvent(BuildContext context, DateTime time){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Event(time: time),));
  }

  static goToCalendar(BuildContext context){
    Navigator.pushReplacementNamed(context, CalendarScreen.id);
  }

  static goToDetail(BuildContext context){
    Navigator.pushReplacementNamed(context, DetailsScreen.id);
  }
}
