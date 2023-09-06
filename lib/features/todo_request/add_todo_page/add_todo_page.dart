import 'package:flutter/material.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/features/todo_request/add_todo_page/widgets/add_todo_actions_bar.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final TextEditingController _titleController=TextEditingController();
  final TextEditingController _descriptionController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0).copyWith(
        bottom: MediaQuery.of(context).viewInsets.bottom+24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
           Text(
            "Add Task",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(.87),
            ),
            ),
            const SizedBox(height: 14,),
            TextFormField(
               controller: _titleController,
               decoration:const InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: appColor.greyColor,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appColor.borderColor, width: 1)),
               ),
               style: const TextStyle(
                  color: Colors.white,
                ),
            ),
            const SizedBox(height: 14,),
            TextFormField(
               controller: _descriptionController,
               decoration: const InputDecoration(
                hintText:  "Description",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: appColor.greyColor,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appColor.borderColor, width: 1)),
               ),
               style: const TextStyle(
                  color: Colors.white,
                ),
            ),
            const SizedBox(height: 14,),
            AddTodoActionBar(
              onDateChange: (date){
                print(date);
              }, 
              onPriorityChange: (priority) {
                print(priority);
              },
              onCategoryChange: (category) { 
                print(category);
              },
            ),
        ],
      ),
    );
  }
}