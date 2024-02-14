import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/admin/admin-register-acc.dart';

class AdminMainPage extends StatefulWidget {
  const AdminMainPage({Key? key}) : super(key: key);

  @override
  State<AdminMainPage> createState() => _AdminMainPageState();
}

class _AdminMainPageState extends State<AdminMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminRegisterAccount()));
                },
                child: Card(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50,
                        ),
                        Text('สร้างบัญชี'),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 150,
                  height: 150,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.newspaper,
                        size: 50,
                      ),
                      Text('สร้างบทความ'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(onPressed: () {
            FirebaseAuth.instance.signOut();
          }, child: const Text('ออกจากระบบ'))
        ],
      ),
    );
  }
}