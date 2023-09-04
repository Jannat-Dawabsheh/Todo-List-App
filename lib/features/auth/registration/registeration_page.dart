import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/auth/registration/widgets/register_form.dart';

import '../../../core_presintation/widgets/app_button.dart';
import '../../../generated/l10n.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
             const RegisterForm(),
             const SizedBox(height: 25,),
             SizedBox(
              width: double.infinity,
              height: 45,
               child: AppButton(
                title: S.of(context).signUp, 
                onPressed: (){}),
             ),
             const SizedBox(height: 35,),
             Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                
                Text(
                   S.of(context).alreadyHaveAccount,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                   child: Text(S.of(context).signIn,))
              ],
             )
            ],
          ),
        ),
      ),
    );

  }
}