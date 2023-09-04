import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core_presintation/constants/app_images.dart';
import '../../../Home/home_page.dart';
import '../../models/static_data.dart';
import '../../todo_list_page.dart';

class AddTodoActionBar extends StatefulWidget {
  const AddTodoActionBar({super.key});

  @override
  State<AddTodoActionBar> createState() => _AddTodoActionBarState();
}

class _AddTodoActionBarState extends State<AddTodoActionBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
        onPressed: (){
          showDatePicker(
            context: context,
             initialDate: DateTime.now(),
              firstDate: DateTime.now(),
               lastDate: DateTime.now().add(const Duration(days:365)),
         );
        }, 
        icon: SvgPicture.asset(AppSvg.timerIcon),
        ),

        IconButton(
        onPressed: (){}, 
        icon: SvgPicture.asset(AppSvg.tagIcon),
        ),

        IconButton(
        onPressed: (){}, 
        icon: SvgPicture.asset(AppSvg.flagIcon),
        ),

        Spacer(),
        IconButton(
        onPressed: (){
          Navigator.of(context).pop(context);
          TodoListPage.cardData=StaticCardData;
          TodoListPage.cardDataCompleted=StaticCardDataCompleted;
          Navigator.push( context, MaterialPageRoute( builder: (context) => HomePage()), ).then((value) => setState(() {}));

        }, 
        icon: SvgPicture.asset(AppSvg.sendIcon),
        ),
      ],
    );
  }
}