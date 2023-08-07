import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_task/core/app_routes.dart';
import 'package:to_do_task/domain/models/todo_model.dart';
import 'package:to_do_task/presentation/bloc/todo_bloc.dart';
import 'package:to_do_task/presentation/bloc/todo_event.dart';
import '../../../core/service/service_locator.dart';
import 'widgets/add_button_widget.dart';
import 'widgets/back_button_widget.dart';
import 'widgets/drop_down_button.dart';
import 'widgets/text_field_time.dart';
import 'widgets/text_field_widget.dart';
import 'widgets/text_widget.dart';

class Event extends StatefulWidget {
  final DateTime time;
  static const id = "event/";

  Event({Key? key, required this.time}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  final TextEditingController eventName = TextEditingController();

  final TextEditingController eventTitle = TextEditingController();

  final TextEditingController eventDescription = TextEditingController();

  final TextEditingController eventLocation = TextEditingController();

  final TextEditingController eventTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery
                  .sizeOf(context)
                  .height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Back Button
                  BackButtonWidget(
                      onTap: () => AppRoutes.goToCalendar(context)),
                  const SizedBox(height: 20),

                  /// Event name
                  const TextWidget(text: "Event name"),
                  const SizedBox(height: 8),

                  EventTextField(
                    controller: eventName,
                  ),
                  const SizedBox(height: 8),

                  /// Event title
                  const TextWidget(text: "Event title"),
                  const SizedBox(height: 8),

                  /// Event title text field
                  EventTextField(
                    controller: eventTitle,
                  ),
                  const SizedBox(height: 8),

                  /// Event description
                  const TextWidget(text: "Event description"),
                  const SizedBox(height: 8),

                  /// Event description text field
                  EventTextField(
                    controller: eventDescription,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 8),

                  /// Event location
                  const TextWidget(text: "Event location"),
                  const SizedBox(height: 8),

                  /// Event location text field
                  EventTextField(
                    controller: eventLocation,
                    widget: const Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),

                  /// Priotiry color
                  const TextWidget(text: "Priotiry color"),
                  const SizedBox(height: 8),

                  /// Priotiry color Button
                  const ColorDropDownButton(),
                  const SizedBox(height: 8),

                  /// Event time
                  const TextWidget(text: "Event time"),
                  const SizedBox(height: 8),

                  /// Event time Text field
                  EventTextFieldTime(
                    controller: eventTime,
                  ),
                  const SizedBox(height: 60),

                  /// Add Button
                  AddButtonWidget(
                    onTap: () {
                     final todoModel =  TodoModel(id: 1,
                        eventName: eventName.text,
                        eventDescription: eventDescription.text,
                        eventLocation: eventLocation.text,
                        priorityColor: Random().nextInt(17),
                        time:  EventTime(widget.time.add(const Duration(hours: 10, minutes: 15)), widget.time.add(const Duration(hours: 11, minutes: 50))),
                        remainder: 15,
                        eventTitle: eventTitle.text,
                      );
                      locator.get<TodoBloc>().add(CreateTodoEvent(todoModel: todoModel ));
                      Navigator.pop(context);
                      locator.get<TodoBloc>().add(const LoadingEvent());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

