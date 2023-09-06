import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/core_presintation/constants/app_images.dart';
import 'package:to_do_list_app/features/todo_list/models/task_category.dart';

import '../../../../core_presintation/widgets/app_button.dart';

class CreateNewCategory extends StatefulWidget {
  const CreateNewCategory({super.key});

  @override
  State<CreateNewCategory> createState() => _CreateNewCategoryState();
}

class _CreateNewCategoryState extends State<CreateNewCategory> {
  final TextEditingController _NameController=TextEditingController();
  int? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.all(24.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Create new category",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color:Colors.white,
                ),
              ),
              const SizedBox(height: 14,),
              Text(
                "Category name :",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color:Colors.white,
               ),
              ),
            
              const SizedBox(height: 14,),
              TextFormField(
                controller: _NameController,
                decoration:const InputDecoration(
                  hintText: "Category name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: appColor.greyColor,
                  ),
                  enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: appColor.borderColor, width: 1)) ,
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appColor.borderColor, width: 1)),
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
        
              const SizedBox(height: 20,),
              Text(
                "Category icon :",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color:Colors.white,
               ),
              ),
              
              const SizedBox(height: 14,),
              MaterialButton(
                  onPressed:(){},
                  color:Colors.grey.withOpacity(0.21),
                  height: 37,
                  minWidth: 154,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                    child: Text(
                      "Choose icon from library",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color:Colors.white.withOpacity(.87),
                      fontSize: 12,
                      ),
                    ),
                  ),
                ),
                
              const SizedBox(height: 20,),
              Text(
                "Category color :",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color:Colors.white,
               ),
              ),
             
             const SizedBox(height: 20,),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder:(context, index) => Padding(
                    padding: const EdgeInsetsDirectional.only(end:12.0),
                    child: InkWell(
                      onTap: (){
                         setState(() {
                           _selectedColor=index;
                         });
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: categoryList[index].color,
                          shape: BoxShape.circle
                                        
                        ),
                        child:  _selectedColor==index?SvgPicture.asset(AppSvg.check):null,
                      ),
                      
                    ),
                  ), 
                  ),
              ),

              Spacer(),
               Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            title: "Cancel",
                            hasBackground: false,
                            height: 48,
                           onPressed: (){},
                           ),
                        ),
               
                        const SizedBox(width: 5,),
                        Expanded(
                          child: AppButton(
                            title: "Create Category",
                             height: 48,
                           onPressed: (){
                            Navigator.pop(context);
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