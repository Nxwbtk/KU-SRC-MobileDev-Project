import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KU App'),
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
                    Navigator.pop(context);
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
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Welcome to KU App'),
                const SizedBox(
                  height: 20,
                ),
                const Text('You are logged in'),
                ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                    },
                    child: const Text('Logout'))
              ],
            ),
          ),
        ));
  }
}
