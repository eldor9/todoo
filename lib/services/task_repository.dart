import 'package:todoo/services/hive_database.dart';

class TaskRepository {

  Future getAllTasks() => HiveD.getTasksList();
}