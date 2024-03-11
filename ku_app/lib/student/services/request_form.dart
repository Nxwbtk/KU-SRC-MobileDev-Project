import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({super.key});

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  CollectionReference requestCollection =
      FirebaseFirestore.instance.collection('std_request');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _topicRequestController = TextEditingController();
  final TextEditingController _detailRequestController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ส่งคำร้องขอใช้บริการ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 20),
          const Text(
            "กรุณากรอกข้อมูลให้ครบถ้วน",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "หัวข้อคำร้อง",
                    border: OutlineInputBorder(),
                  ),
                  controller: _topicRequestController,
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "รายละเอียด",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  controller: _detailRequestController,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await requestCollection.add({
                      'createdBy': _auth.currentUser!.email,
                      'topic': _topicRequestController.text,
                      'detail': _detailRequestController.text,
                      'status': 0,
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("ส่งคำร้อง"),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
