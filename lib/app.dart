import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_task/core/app_routes.dart';
import 'package:to_do_task/core/service/service_locator.dart';
import 'package:to_do_task/presentation/bloc/todo_bloc.dart';
import 'package:to_do_task/presentation/bloc/todo_event.dart';

import 'presentation/screen/calendar_screen/calendar_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => locator.get<TodoBloc>()..add(const LoadingEvent()),
      child: MaterialApp(
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: ThemeMode.light,
        home: const CalendarScreen(),
        routes: AppRoutes.routes,
      ),
    );
  }
}