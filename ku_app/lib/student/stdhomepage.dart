import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ku_app/student/Grade.dart';
=======
import 'package:ku_app/student/PayTuition/PayTuitionSecond.dart';
import 'package:ku_app/student/accountpage.dart';
>>>>>>> main
import 'package:ku_app/student/emptypage.dart';
import 'package:ku_app/student/homepage.dart';

class StdHomePage extends StatefulWidget {
  const StdHomePage({super.key});

  @override
  State<StdHomePage> createState() => _StdHomePageState();
}

class _StdHomePageState extends State<StdHomePage> {
  int _selectedIndex = 0;
<<<<<<< HEAD
  final screen = [
    EmptyPage(),
    HomePage(),
    GradePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nisit KU'),
          backgroundColor: Colors.grey[100],
        ),
        endDrawer: Drawer(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 100,
                ),
                ListTile(
                  title: const Text('Home'),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                ListTile(
                  title: const Text('Logout Page'),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                ListTile(
                  title: const Text('Grade'),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                ListTile(
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
=======
  final screen = [const HomePage(), const PayTuitionSecond(), const EmptyPage(), const AccountPage()];
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
                height: 100,
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
                title: const Text('PayTuition'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('บัญชีของคุณ'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
            ],
>>>>>>> main
          ),
        ),
      ),
      body: screen[_selectedIndex],
    );
  }
}
