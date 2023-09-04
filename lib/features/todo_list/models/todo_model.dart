import 'package:to_do_list_app/features/todo_list/models/task_category.dart';

class Task{
  final String title;
  final String descreption;
  final DateTime taskTime;
  final TaskCaregory category;
  final int priority;
  final List<Task> subtasks;

  Task(
    {required this.title,
     required this.descreption, 
     required this.taskTime,
     required this.category,
     required this.priority,
     required this.subtasks
     }); 
}