

import 'package:to_do_list_app/core_presintation/constants/app_images.dart';

class OnBourdimgModel{
  final String image;
  final String title;
  final String description;

  OnBourdimgModel({
    required this.image, 
    required this.title, 
    required this.description});

    static List <OnBourdimgModel> get list=>[
       OnBourdimgModel(
        image: AppSvg.onbourding1,
         title: "Manage your tasks",
          description: "You can easily manage all of your daily tasks in DoMe for free",
        ),

        OnBourdimgModel(
        image: AppSvg.onbourding2,
         title: "Create daily routine",
          description: "In Uptodo you can create your personalized routine to stay productive",
        ),

        OnBourdimgModel(
        image: AppSvg.onbourding3,
         title: "Orgonaize your tasks",
          description: "You can organize your daily tasks by adding your tasks into separate categories",
        ),
    ];

}