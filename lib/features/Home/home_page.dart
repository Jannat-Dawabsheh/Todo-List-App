import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/core_presintation/constants/app_images.dart';
import 'package:to_do_list_app/features/calendar/calendar_page.dart';
import 'package:to_do_list_app/features/focuse/focuse_page.dart';
import 'package:to_do_list_app/features/todo_list/add_todo_page/add_todo_page.dart';
import 'package:to_do_list_app/features/todo_list/models/task_category.dart';
import 'package:to_do_list_app/features/todo_list/models/todo_model.dart';
import 'package:to_do_list_app/features/todo_list/todo_list_page.dart';
import 'package:to_do_list_app/features/todo_list/widgets/task_build_item.dart';
import 'package:to_do_list_app/features/user_profile/user_profile_page.dart';
import 'package:to_do_list_app/features/todo_list/models/static_data.dart';
import '../todo_list/models/static_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;

  List<Widget> get _screens=>const[
    TodoListPage(),
    ClaendarPage(),
    FocusePage(),
    UserProfilePage(),
  ];

  List<String> get _screensTitles=>const[
    "Home",
    "Calendar",
    "Focuse",
    "User Profile",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(_screensTitles[_currentIndex]),
        leading: _currentIndex!=0?const SizedBox():IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(AppSvg.sort)
          ),
          actions: _currentIndex!=0?[]:[
            Container(
              width: 42,
              height: 42,
              margin:const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png"),)
              ),
            ),
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: appColor.primaryColor,
        child: SvgPicture.asset(
          AppSvg.addIcon,
           width: 32,
            height: 32,
          ),
        onPressed: (){
          //addTask();
          showModalBottomSheet(
            context: context, 
            backgroundColor: appColor.sheetBackgroundColor,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context)=>const AddTodoPage(),
            );
        }
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff363636),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.87),
        currentIndex: _currentIndex,
        onTap: (index){
          _currentIndex=index;
          setState(() {
            
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.homeIcon),
            activeIcon: SvgPicture.asset(AppSvg.homeFilledIcon),
            label: "home",
            ),

            BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.calenderIcon),
            activeIcon: SvgPicture.asset(AppSvg.calenderFilledIcon),
            label: "Calendar",
            ),

            BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.clockIcon),
            activeIcon: SvgPicture.asset(AppSvg.clockFilledIcon),
            label: "Focuse",
            ),

            BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.userIcon),
            activeIcon: SvgPicture.asset(AppSvg.userIcon),
            label: "Profile",
            ),
        ]),
        body:_screens[_currentIndex],
    );
  }


  /* addTask()=>showDialog(
    context: context,
     builder: (context)=> AlertDialog(
                  backgroundColor: appColor.DialogColor,
                  title: Text(
                    "Add Task",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
                  content: const SizedBox(
                    height: 130,
                    child: Column(
                      children: [
                        SizedBox(height: 8.0,),
                            TextField(
                              style: TextStyle(fontSize: 16.0, height: 0.2, color: Colors.white),
                              decoration: InputDecoration(
                                hintText:'Task title...',
                                hintStyle:  TextStyle(
                                  color: Colors.grey,
                                  
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.0, color: appColor.lightBackgroundColor),
                                  ),
                              ),
                              
                            ),
                
                            const SizedBox(height: 8.0,),
                            TextField(
                              style: TextStyle(fontSize: 16.0, height: 0.2, color: Colors.white),
                              decoration: InputDecoration(
                                hintText:'Task Discription...',
                                hintStyle:  TextStyle(
                                  color: Colors.grey,
                                  
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.0, color: appColor.lightBackgroundColor),
                                  ),
                              ),
                              
                            ),
                      ],
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: (){}, 
                      icon: SvgPicture.asset(AppSvg.timerIcon),),
                      IconButton(
                      onPressed: (){}, 
                      icon: SvgPicture.asset(AppSvg.tagIcon),),
                      IconButton(
                      onPressed: (){}, 
                      icon: SvgPicture.asset(AppSvg.flagIcon),),
                      const SizedBox(width: 50,),
                      IconButton(
                      onPressed: (){
                        Navigator.of(context).pop(context);
                        TodoListPage.cardData=StaticCardData;
                        TodoListPage.cardDataCompleted=StaticCardDataCompleted;
                        Navigator.push( context, MaterialPageRoute( builder: (context) => HomePage()), ).then((value) => setState(() {}));
                        setState(() {
                        
                          _currentIndex=0;
                          
                          // TodoListPage.tasksList.add(Task(title: "title", descreption: "descreption", taskTime: DateTime.now(), category: TaskCaregory(color:"" ,name:"" ,icon: ""), priority: 1, subtasks: []));
                        });
                        
                        
                      }, 
                      icon: SvgPicture.asset(AppSvg.sendIcon),),
                  ],
            )
  
  );
     */
}