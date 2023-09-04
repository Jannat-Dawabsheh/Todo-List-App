
import 'dart:ui';

import 'package:flutter_svg/svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';

import '../../../core_presintation/constants/app_images.dart';

class StaticData{
  final String id;
  final String title;
  final String time;
  final String category;
  final int priority;
  final Color ContainerColor;
  final SvgPicture img;

  StaticData( {
    required this.id, 
    required this.title, 
    required this.time, 
    required this.category,
    required this.priority,
    required this.ContainerColor,
    required this.img,
    });


}
   List<StaticData> StaticCardData=[
        StaticData(id: '1', title: "Do Math Homework", category: 'University', time: 'Today At 16:45', priority: 1, ContainerColor:appColor.PurpleColor,  img: SvgPicture.asset(AppSvg.mortaboard),),
        StaticData(id: '2', title: "Tack out dogs", category: 'Home', time: 'Today At 18:20', priority: 2,ContainerColor:appColor.RedColor,  img: SvgPicture.asset(AppSvg.home2),),
        StaticData(id: '3', title: "Business meeting with CEO", category: 'Work', time: 'Today At 08:15', priority: 3,ContainerColor:appColor.YellowleColor,  img: SvgPicture.asset(AppSvg.caseIcon),),
]; 

List<StaticData> StaticCardDataCompleted=[
        StaticData(id: '1', title: "buy grocery", category: 'Home', time: 'Today At 16:45', priority: 2, ContainerColor:appColor.RedColor,  img: SvgPicture.asset(AppSvg.home2),),
       ];