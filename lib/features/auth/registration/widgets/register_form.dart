import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).signUp,
              style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height:16),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).Username,
                labelText: S.of(context).Username,
              ),
            ),
             const SizedBox(height:16),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).Email,
                labelText: S.of(context).Email,
              ),
            ),

              const SizedBox(height:16),
            TextField(
              obscureText:true,
              decoration: InputDecoration(
                hintText: S.of(context).password,
                labelText: S.of(context).password,
              ),
            ),
             const SizedBox(height:16),
            TextField(
              obscureText:true,
              decoration: InputDecoration(
                hintText: S.of(context).confirmpassword,
                labelText: S.of(context).confirmpassword,
              ),
            ),
            const SizedBox(height:16),
            
          ],
        ),
      ),
    );
 
  }
}