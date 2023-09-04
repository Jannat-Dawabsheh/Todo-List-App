import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/features/todo_list/models/todo_model.dart';
import 'package:to_do_list_app/features/todo_list/widgets/task_build_item.dart';
import 'package:to_do_list_app/features/todo_list/widgets/tasks_empty_widget.dart';

import '../../core_presintation/constants/app_images.dart';
import 'models/static_data.dart';
import 'models/task_category.dart';

class TodoListPage extends StatefulWidget {
   const TodoListPage({super.key});
  //static List <Task> tasksList=[Task(title: "title", descreption: "descreption", taskTime: DateTime.now(), category: TaskCaregory(color:"" ,name:"" ,icon: ""), priority: 1, subtasks: []),
  //        ];
  static List<StaticData> cardData=[];
  static List<StaticData> cardDataCompleted=[];
  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
 // List <Task> _tasksList=[];
 
  @override
  Widget build(BuildContext context) {
    if(TodoListPage.cardData.isEmpty){
      print("empty");
      return const Center(child: TasksEmptyWidget());
    }else{
      print("Not empty");
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Icons.search, color: Colors.grey,),
                      hintText:'Search for your task...',
                      hintStyle:  TextStyle(
                        color: Colors.grey,
      
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0, color:appColor.lightBackgroundColor),
                        ),
                    ),
                    
                  ),
            const SizedBox(height: 16,),

              Container(
                width: 80,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF).withOpacity(0.21),
                  borderRadius: BorderRadius.circular(4),  
                ),
                child:  Row(
                    children: [
                      Text("Today",style: Theme.of(context).textTheme.labelSmall?.copyWith(color:Colors.white,)),
                      const SizedBox(width: 3,),
                      SvgPicture.asset(AppSvg.arrowIcon),
                    ],
                  ),
              ),
             const  SizedBox(height: 20,),
              
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                itemCount: TodoListPage.cardData.length,
                padding: EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (context,index)//=>TaskBuilderItem(),
                {
                  return Card(
                                  
                          color: appColor.CardColor,
                          shadowColor: appColor.CardColor,
                                    
                          child:Padding(
                            
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.circle_outlined, color: Colors.white,),
                                SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                
                                children: [
                                  Text(
                                    "${TodoListPage.cardData[index].title}",
                                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                      color: Colors.white.withOpacity(0.87),
                                    )
                                    ),
                                    const SizedBox(height: 10,),
                                    Text(
                                        "${TodoListPage.cardData[index].time}",
                                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                          color: Colors.grey,
                                        )),
                                ],
                              ),

                              //SizedBox(height: 50, width: 30,),
                              Spacer(),
                              Container(
                                
                                alignment:Alignment.bottomRight,
                                width: 170,
                                height: 80,
                                // decoration: BoxDecoration(
                                //   color: Colors.yellow,
                                // ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:10.0),
                                      child: Container(
                                        width: 100,
                                        height: 29,
                                        decoration: BoxDecoration(
                                          color: TodoListPage.cardData[index].ContainerColor,
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              TodoListPage.cardData[index].img,
                                              SizedBox(width: 2,),
                                              Text("${TodoListPage.cardData[index].category}", style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 50,
                                      height: 29,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            width: 1,
                                            color: appColor.primaryColor,
                                          ),
                                        
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(AppSvg.flagIcon),
                                            SizedBox(width: 2,),
                                            Text("${TodoListPage.cardData[index].priority}", style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              ],
                            ),
                        

                            
                          ),
                          );
                }
                
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                width: 120,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF).withOpacity(0.21),
                  borderRadius: BorderRadius.circular(4),  
                ),
                child:  Row(
                    children: [
                      Text("Completed",style: Theme.of(context).textTheme.labelSmall?.copyWith(color:Colors.white,)),
                      SizedBox(width: 3,),
                      SvgPicture.asset(AppSvg.arrowIcon),
                    ],
                  ),
              ),
               const SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                itemCount: TodoListPage.cardDataCompleted.length,
                padding: EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (context,index)//=>TaskBuilderItem(),
                {
                  return SizedBox(
                    height: 100,
                    width: 327,
                    
                    child: Card(
                                    
                            color: appColor.CardColor,
                            shadowColor: appColor.CardColor,
                                    
                            child:Padding(
                              
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                
                                children: [
                                  Icon(Icons.circle_outlined, color: Colors.white,),
                                  SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${TodoListPage.cardDataCompleted[index].title}",
                                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                        color: Colors.white.withOpacity(0.87),
                                      )
                                      ),
                                      const SizedBox(height: 10,),
                                      Text(
                                          "${TodoListPage.cardDataCompleted[index].time}",
                                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                            color: Colors.grey,
                                          )),
                                  ],
                                ),
                  
                                ],
                              ),
                            ),
                            ),
                  );
                }
                
                ),
              ),
        ],
      ),
    ) ;
  }
}