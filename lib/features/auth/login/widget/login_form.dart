import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
              S.of(context).signIn,
              style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height:16),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).UsernameOrEmail,
                labelText: S.of(context).UsernameOrEmail,
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
            TextButton(onPressed: (){}, child: Text(S.of(context).forgetPassword)),
            
          ],
        ),
      ),
    );
  }
}