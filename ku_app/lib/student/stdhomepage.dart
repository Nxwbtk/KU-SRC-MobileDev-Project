import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/student/Settings.dart';
import 'package:ku_app/student/emptypage.dart';
import 'package:ku_app/student/home.dart';
import 'package:ku_app/student/planpage.dart';
import 'package:ku_app/student/profile.dart';
import 'package:ku_app/student/register.dart';
import 'package:ku_app/student/schedule.dart';
import 'package:ku_app/student/status.dart';

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
    ProfilePage(),
    PlanPage(),
    RegisterPage(),
    StatusPage(),
    SchedulePage(),
    SettingsPage(),
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
                title: const Text('Profile'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
              ListTile(
                title: const Text('Study Plan page'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              ListTile(
                title: const Text('Register'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
              ),
              ListTile(
                title: const Text('Status'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 5;
                  });
                },
              ),
              ListTile(
                title: const Text('Schedule'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 6;
                  });
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 7;
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: screen[_selectedIndex],
    );
  }
}
