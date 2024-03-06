import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/admin/adminhomepage.dart';
import 'package:ku_app/student/stdhomepage.dart';

class CheckRolePage extends StatefulWidget {
  const CheckRolePage({super.key});

  @override
  State<CheckRolePage> createState() => _CheckRolePageState();
}

class _CheckRolePageState extends State<CheckRolePage> {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: _db.collection('users_collection').doc(_auth.currentUser?.email).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          dynamic data = snapshot.data!.data();
          if (data == null) {
            return const AdminHomePage();
          }
          if (data['role'] == 'admin') {
            return const AdminHomePage();
          } else {
            return const StdHomePage();
          }
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
