import 'package:flutter/material.dart';
import 'package:ku_app/student/planpage.dart';
import 'package:ku_app/student/register.dart';
import 'package:ku_app/student/schedule.dart';
import 'package:ku_app/student/grade.dart';
import 'package:ku_app/student/PayTuition/pay_tuition_second.dart';
import 'package:ku_app/student/accountpage.dart';
import 'package:ku_app/student/homepage.dart';

class StdHomePage extends StatefulWidget {
  const StdHomePage({super.key});

  @override
  State<StdHomePage> createState() => _StdHomePageState();
}

class _StdHomePageState extends State<StdHomePage> {
  int _selectedIndex = 0;

  final screen = [
    const HomePage(),
    const AccountPage(),
    const PayTuitionSecond(),
    const GradePage(),
    const PlanPage(),
    const RegisterPage(),
    const SchedulePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nisit KU V.2'),
        backgroundColor: Colors.green[800],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 50,
              ),
              ListTile(
                title: const Text('หน้าหลัก'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              ListTile(
                title: const Text('ชำระค่าเทอม'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
              ListTile(
                title: const Text('ผลการเรียน'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              ListTile(
                title: const Text('แผนการเรียน'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
              ),
              ListTile(
                title: const Text('ลงทะเบียนเรียน'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 5;
                  });
                },
              ),
              ListTile(
                title: const Text('ตารางเรียน'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 6;
                  });
                },
              ),
              ListTile(
                title: const Text('บัญชีของคุณ'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: screen[_selectedIndex],
    );
  }
}
