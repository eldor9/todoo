import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoo/bloc/event.dart';
import 'package:todoo/bloc/state.dart';
import 'package:todoo/services/task_repository.dart';

class BlocTask extends Bloc<Events, States> {
  TaskRepository taskRepository = TaskRepository();

  BlocTask(this.taskRepository) : super(IsEmptyStates()) {
    on<IsEmptyEvent>((event, emit) async {
      emit(IsEmptyStates());
    });
    on<HaveTaskEvent>((event, emit) async {
      final List _loadedTaskList = await taskRepository.getAllTasks();
      emit(HaveTaskStates(loadedTask: _loadedTaskList));
    });
  }
}
