import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/features/todo_list/todo_list_page.dart';
import 'package:to_do_list_app/main.dart';

import '../../../core_presintation/constants/app_images.dart';

class TaskBuilderItem extends StatelessWidget {
  const TaskBuilderItem({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "Do Math Homework",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.white.withOpacity(0.87),
                    )
                    ),
                    const SizedBox(height: 10,),
                    Text(
                        "Today At 16:45",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.grey,
                        )),
                ],
              ),
              SizedBox(height: 50, width: 30,),
              Container(
                
                alignment:Alignment.bottomRight,
                width: 170,
                height: 80,

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Container(
                        width: 100,
                        height: 29,
                        decoration: BoxDecoration(
                          color: appColor.PurpleColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppSvg.mortaboard),
                              SizedBox(width: 2,),
                              Text("University", style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
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
                            Text("1", style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ],
            ),
          //card2



            
          ),
          );
  }
}