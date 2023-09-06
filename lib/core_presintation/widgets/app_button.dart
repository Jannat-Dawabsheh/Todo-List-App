import 'package:flutter/material.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onPressed,  this.isPrimary=true, this.height,this.hasBackground=true,});
  final String title;
  final VoidCallback onPressed;
  final bool isPrimary;
  final double? height; 
  final bool hasBackground;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      color:!hasBackground? null: isPrimary? appColor.primaryColor:appColor.scaffoldBackgroundColor,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: !isPrimary?BorderSide(color: appColor.primaryColor, width: 2):BorderSide.none,
      ),
      child: Text(
        title,
        style:  TextStyle(
          color: hasBackground? Colors.white:appColor.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),);
  }
}