import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminAccountPage extends StatefulWidget {
  const AdminAccountPage({super.key});

  @override
  State<AdminAccountPage> createState() => _AdminAccountPageState();
}

class _AdminAccountPageState extends State<AdminAccountPage> {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: _db
            .collection('users_collection')
            .doc(_auth.currentUser?.email)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            dynamic data = snapshot.data!.data();
            if (data == null) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {
                              FirebaseAuth.instance.signOut();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red[400],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                )),
                            child: const Text(
                              'ออกจากระบบ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text('ข้อมูลส่วนตัว',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    const SizedBox(
                      height: 20,
                    ),
                    const CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          AssetImage("lib/assets/imgs/AdminImg.jpg"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                            'ชื่อ-นามสกุล: ${data['first_name'] ?? ""} ${data['last_name'] ?? ""}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'อีเมล: ${_auth.currentUser?.email}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            FirebaseAuth.instance.signOut();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[400],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                          child: const Text(
                            'ออกจากระบบ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return const Text('No data');
          }
        });
  }
}
