import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:to_do/db/db_helper.dart';
import 'package:to_do/models/task.dart';

class TaskController extends GetxController{

  final RxList<Task> taskList = <Task>[].obs;

  Future<int> addTask({Task? task}){
    return DBHelper.insert(task);
  }


  Future<void> getTasks()async{
   final List<Map<String, dynamic>> tasks = await DBHelper.query();
   taskList.assignAll(tasks.map((data) => Task.fromJson(data)).toList());
  }

 void deleteTask(Task task)async{
    print('delete');
    await DBHelper.delete(task);
    getTasks();
  }

 void markTaskAsCompleted(int id)async{
    await DBHelper.update(id);
    getTasks();
  }

}