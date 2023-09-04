import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list_app/Quran_app_theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/onboarding/onboarding_page.dart';
import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness:Brightness.dark,
      statusBarColor:Colors.transparent,
      statusBarBrightness:Brightness.dark,
    ),
  
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppTheme.currentLocale,
      builder: (context, locale,_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: locale,
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'), // Arabic
          ],
          home: const OnBoardingPage(),
        );
        }
    );
  }
}

