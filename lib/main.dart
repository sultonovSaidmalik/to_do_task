import 'package:flutter/material.dart';
import 'package:to_do_task/domain/data/local_data_sorce/local_data_source.dart';

import 'app.dart';
import 'core/service/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDataSourceImpl.init();
  setupLocator();
  runApp(const TodoApp());
}