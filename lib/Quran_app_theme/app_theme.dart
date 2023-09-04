import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';

import '../core_presintation/constants/theme.dart';

class AppTheme{
  static ValueNotifier<Locale> currentLocale= ValueNotifier(ThemeConstants.englishLocale);
  static ThemeData lightTheme() =>ThemeData(
    primaryColor: appColor.primaryColor,
    scaffoldBackgroundColor: appColor.scaffoldBackgroundColor,
    fontFamily: ThemeConstants.latofontFamily,
    appBarTheme: const AppBarTheme(
      backgroundColor: appColor.scaffoldBackgroundColor,
      elevation: 0,
      systemOverlayStyle:SystemUiOverlayStyle(
      statusBarIconBrightness:Brightness.dark,
      statusBarColor:Colors.transparent,
      statusBarBrightness:Brightness.dark,
    ),
    ),
    textTheme:const  TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
         fontSize: 18,
         fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
         fontSize: 16,
         fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
         fontSize: 14,
         fontWeight: FontWeight.w400,
      ),
    ),
  );
  
}