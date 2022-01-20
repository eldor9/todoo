import 'package:hive/hive.dart';

class HiveD {

  static void setTask(String task) async {
    var taskDB = await Hive.openBox('TaskDB');
    taskDB.put(task, task);
  }
  
  static Future getTasksList<List>()async{
    var taskDB = await Hive.openBox('TaskDB');
    return taskDB.values.toList();

  }
}