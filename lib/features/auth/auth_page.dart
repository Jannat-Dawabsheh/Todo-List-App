import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/Home/home_page.dart';
import 'package:to_do_list_app/core_presintation/services/app_navigator.dart';
import 'package:to_do_list_app/core_presintation/widgets/app_button.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(
                "Welcome to UpTodo",
                style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 26,),
                Text(
                "Please login to your account or create new account to continue",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white.withOpacity(0.67),
                ),
                textAlign: TextAlign.center,
                ),
                const Spacer(),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: AppButton(
                    title: "LOGIN",
                     onPressed: (){}),
                ),
                const SizedBox(height: 28,),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: AppButton(
                    title: "Skip To Home".toUpperCase(),
                    isPrimary: false,
                     onPressed: (){
                      AppNavigator.navigateTo(context, const HomePage());
                     }),
                ),

            ],
            
          ),
        ),
      ),
    );
  }
}