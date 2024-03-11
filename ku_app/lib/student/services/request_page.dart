import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/student/services/request_form.dart';
import 'package:ku_app/student/services/view_edit_request.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  CollectionReference requestCollection =
      FirebaseFirestore.instance.collection('std_request');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "คำร้องขอใช้บริการ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: StreamBuilder(
        stream: requestCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot request = snapshot.data!.docs[index];
                if (request['createdBy'] == _auth.currentUser!.email) {
                  return Card(
                    color: request['status'] == 0 ? Colors.teal[100] : request['status'] == -1 ? Colors.red : Colors.green,
                    child: ListTile(
                      // ignore: prefer_interpolation_to_compose_strings
                      title: Text("หัวข้อ: " + request['topic'], style: const TextStyle(fontWeight: FontWeight.bold)),
                      // ignore: prefer_interpolation_to_compose_strings
                      subtitle: Text("รายละเอียด: " + (request['detail'].length > 20 ? request['detail'].substring(0, 20) + '...' : request['detail']),),
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("ลบคำร้องขอ?"),
                                content: const Text(
                                    "คุณต้องการลบคำร้องขอนี้ใช่หรือไม่?"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("ยกเลิก")),
                                  TextButton(
                                      onPressed: () {
                                        requestCollection
                                            .doc(request.id)
                                            .delete();
                                        Navigator.pop(context);
                                      },
                                      child: const Text("ยืนยัน")),
                                ],
                              );
                            });
                      },
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewEditRequestPage(),
                                settings: RouteSettings(
                                  arguments: request
                                )
                              )
                            );
                      },
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RequestForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
