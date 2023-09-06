import 'package:flutter/material.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/features/todo_request/category_sheet/widgets/create_new_category.dart';

import '../../../core_presintation/widgets/app_button.dart';
import '../../todo_list/models/task_category.dart';

class TaskCategorySheet extends StatefulWidget {
  const TaskCategorySheet({super.key});

  @override
  State<TaskCategorySheet> createState() => _TaskCategorySheetState();
}

class _TaskCategorySheetState extends State<TaskCategorySheet> {
  int? _selectedCategory;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  "Choose Category",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(.87),
                  ),
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Colors.grey,),
                  const SizedBox(height: 22,),
                  GridView.builder(
                    itemCount: categoryList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                     // childAspectRatio: 1,
                      crossAxisSpacing: 48,
                      mainAxisSpacing: 16,
                      ),
                     itemBuilder: (context,index)=>Center(
                       child: Column(
                        mainAxisSize: MainAxisSize.min,
                         children: [
                           Container(
                            width: 64,
                            height: 64,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                color: categoryList[index].color ,
                                borderRadius: BorderRadius.circular(4),
                                border: _selectedCategory==index+1? Border.all(color: Colors.yellowAccent, width: 2):null,
                            ),
                            
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  _selectedCategory=index+1;
                               });
                               if(_selectedCategory==11){
                                Navigator.push( context, MaterialPageRoute( builder: (context) => CreateNewCategory()), ).then((value) => setState(() {}));
                               }
                              },
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    categoryList[index].icon,
                                    ],
                                ),
                              ),
                            ),
                           ),
                          const SizedBox(height: 5,),
                          Text(
                            categoryList[index].name,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(.87),
                            ),
                          ),
                         ],
                       ),
                     )
                     ),
                     const SizedBox(height: 20,),
                     Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            title: "Add Category",
                            height: 48,
                           onPressed: (){
                            Navigator.pop(context,_selectedCategory);
                           },
                           ),
                        ),
                        
                      ],
                     )
            
            ],
          ),
        ),
      ),
    );
 
  }
}