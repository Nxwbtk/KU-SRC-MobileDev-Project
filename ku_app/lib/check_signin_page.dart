import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../check_role_page.dart';
import 'package:ku_app/loginpage.dart';

class CheckSignInPage extends StatelessWidget {

  const CheckSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const CheckRolePage();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
