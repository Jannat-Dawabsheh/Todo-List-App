import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/features/todo_request/category_sheet/category_sheet_page.dart';
import 'package:to_do_list_app/features/todo_request/priority_sheet/priority_sheet_page.dart';

import '../../../../core_presintation/constants/app_images.dart';
import '../../../Home/home_page.dart';
import '../../../todo_list/models/static_data.dart';
import '../../../todo_list/todo_list_page.dart';

class AddTodoActionBar extends StatefulWidget {
  const AddTodoActionBar({super.key, required this.onDateChange, required this.onPriorityChange, required this.onCategoryChange});
  final Function (DateTime date) onDateChange;
  final Function (int? result) onPriorityChange;
  final Function (int? category) onCategoryChange;
  
  @override
  State<AddTodoActionBar> createState() => _AddTodoActionBarState();
}

class _AddTodoActionBarState extends State<AddTodoActionBar> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
        onPressed: () async{
          final date =await showDatePicker(
            context: context,
             initialDate: DateTime.now(),
              firstDate: DateTime.now(),
               lastDate: DateTime.now().add(const Duration(days:365)),
         );
        
        final time =await showTimePicker(
            context: context,
             initialTime: TimeOfDay.now(),
         );
         
         if(date!=null && time!=null){
          _selectedDate=DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
          widget.onDateChange(_selectedDate!);
         }
        }, 
        icon: SvgPicture.asset(AppSvg.timerIcon),
        ),

        IconButton(
        onPressed: ()async{
          final category= await showModalBottomSheet<int?>(
            context: context, 
            backgroundColor: appColor.sheetBackgroundColor,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context)=>const TaskCategorySheet(),
            );
            widget.onCategoryChange(category);
        },
        icon: SvgPicture.asset(AppSvg.tagIcon),
        ),

        IconButton(
        onPressed: ()async{
          final result= await showModalBottomSheet<int?>(
            context: context, 
            backgroundColor: appColor.sheetBackgroundColor,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context)=>const TaskPrioritySheet(),
            );
            widget.onPriorityChange(result);
        },
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