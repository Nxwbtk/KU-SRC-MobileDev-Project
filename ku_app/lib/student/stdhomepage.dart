import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/student/Grade.dart';
import 'package:ku_app/student/emptypage.dart';
import 'package:ku_app/student/home.dart';

class StdHomePage extends StatefulWidget {
  const StdHomePage({super.key});

  @override
  State<StdHomePage> createState() => _StdHomePageState();
}

class _StdHomePageState extends State<StdHomePage> {
  int _selectedIndex = 0;
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
          ),
        ),
        body: screen[_selectedIndex],
        );
  }
}
