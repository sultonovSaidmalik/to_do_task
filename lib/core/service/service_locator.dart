import 'package:get_it/get_it.dart';

import '../../domain/data/local_data_sorce/local_data_source.dart';
import '../../domain/data/repository/todo_repository.dart';
import '../../domain/data/repository/todo_repository_impl.dart';
import '../../presentation/bloc/todo_bloc.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<LocalDataSource>(const LocalDataSourceImpl());
  locator.registerSingleton<TodoRepository>(TodoRepositoryImpl(dataSource: locator()));
  locator.registerSingleton<TodoBloc>(TodoBloc(repository: locator()));
}