

import 'package:flutter/material.dart';
import 'package:ku_app/admin/adminhomepage.dart';
import 'package:ku_app/student/stdhomepage.dart';

class CheckRolePage extends StatelessWidget {
  final String role = 'admin';

  const CheckRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: role == 'student'
          ? const StdHomePage()
          : const AdminHomePage(),
    );
  }
}
