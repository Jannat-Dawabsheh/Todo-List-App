import 'package:flutter/material.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onPressed,  this.isPrimary=true,});
  final String title;
  final VoidCallback onPressed;
  final bool isPrimary;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      color:isPrimary? appColor.primaryColor:appColor.scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: !isPrimary?BorderSide(color: appColor.primaryColor, width: 2):BorderSide.none,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),);
  }
}