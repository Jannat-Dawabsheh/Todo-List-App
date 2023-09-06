import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';

import '../../../core_presintation/constants/app_images.dart';

class TaskCaregory{
  final int id;
  final String name;
  final SvgPicture icon;
  final Color color;

  TaskCaregory({
     required this.id, 
    required this.name, 
    required this.icon, 
    required this.color
    });
}
List<TaskCaregory>categoryList=[
  TaskCaregory(id: 1, name: "Grocery", icon: SvgPicture.asset(AppSvg.GroceryCategoryIcon), color:appColor.GroceryCategory),
  TaskCaregory(id: 2, name: "Work", icon: SvgPicture.asset(AppSvg.WorkCategoryIcon), color:appColor.WorkCategory),
  TaskCaregory(id: 3, name: "Sport", icon: SvgPicture.asset(AppSvg.SportCategoryIcon), color:appColor.SportCategory),
  TaskCaregory(id: 4, name: "Design", icon: SvgPicture.asset(AppSvg.DesignCategoryIcon), color:appColor.DesignCategory),
  TaskCaregory(id: 5, name: "University", icon: SvgPicture.asset(AppSvg.UniversityCategoryIcon), color:appColor.UniversityCategory),
  TaskCaregory(id: 6, name: "Social", icon: SvgPicture.asset(AppSvg.SocialCategoryIcon), color:appColor.SocialCategory),
  TaskCaregory(id: 7, name: "Music", icon: SvgPicture.asset(AppSvg.MusicCategoryIcon), color:appColor.MusicCategory),
  TaskCaregory(id: 8, name: "Health", icon: SvgPicture.asset(AppSvg.HealthCategoryIcon), color:appColor.HealthCategory),
  TaskCaregory(id: 9, name: "Movie", icon: SvgPicture.asset(AppSvg.MovieCategoryIcon), color:appColor.MovieCategory),
  TaskCaregory(id: 10, name: "Home", icon: SvgPicture.asset(AppSvg.HomeCategoryIcon), color:appColor.HomeCategory),
  TaskCaregory(id: 11, name: "Create New", icon: SvgPicture.asset(AppSvg.CreateNewCategoryIcon), color:appColor.CreateNewCategory),
];