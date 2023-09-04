import 'package:flutter/material.dart';
import 'package:to_do_list_app/core_presintation/widgets/app_button.dart';
import 'package:to_do_list_app/features/auth/login/widget/login_form.dart';

import '../../../generated/l10n.dart';
import '../registration/registeration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Quran_logo.png",
                width: MediaQuery.sizeOf(context).width*0.4,
              ),
             const SizedBox(height: 25,),
             const LoginForm(),
             const SizedBox(height: 25,),
             SizedBox(
              width: double.infinity,
              height: 45,
               child: AppButton(
                title: S.of(context).signIn, 
                onPressed: (){}),
             ),
             const SizedBox(height: 35,),
             Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                
                Text(
                   S.of(context).newUser,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterPage()));
                  },
                  child: Text(S.of(context).signUp,))
              ],
             )
            ],
          ),
        ),
      ),
    );
  }
}