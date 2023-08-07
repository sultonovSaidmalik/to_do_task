import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_task/core/app_routes.dart';
import 'package:to_do_task/presentation/bloc/todo_bloc.dart';
import 'package:to_do_task/presentation/bloc/todo_bloc.dart';
import 'package:to_do_task/presentation/bloc/todo_state.dart';

import 'event_widget.dart';

class EventItemsWidget extends StatelessWidget {
  const EventItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<TodoBloc, HomeState>(
        builder: (context, state) {
          return ListView.separated(
            primary: false,
            itemBuilder: (context, index) {
              final todo = state.todoModel![index];
              return GestureDetector(
                onTap: () => AppRoutes.goToDetail(context),
                child: EventTitle(
                  eventName: todo.eventName,
                  eventTitle: todo.eventTitle,
                  color: Colors.primaries[todo.priorityColor],
                  eventTime: todo.time.startTime.hour.toString(),
                  eventLocation: todo.eventLocation,
                  textColor: Colors.primaries[todo.priorityColor],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: state.todoModel!.length,
          );
        },
      ),
    );
  }
}
