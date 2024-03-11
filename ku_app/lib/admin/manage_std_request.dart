import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/admin/approve_request.dart';

class ManageReqPage extends StatefulWidget {
  const ManageReqPage({super.key});

  @override
  State<ManageReqPage> createState() => _ManageReqPageState();
}

class _ManageReqPageState extends State<ManageReqPage> {
  CollectionReference requestCollection =
      FirebaseFirestore.instance.collection('std_request');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "จัดการคำร้อง",
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
                return Card(
                  color: request['status'] == 0
                      ? Colors.teal[100]
                      : request['status'] == -1
                          ? Colors.red
                          : Colors.green,
                  child: ListTile(
                    // ignore: prefer_interpolation_to_compose_strings
                    title: Text("หัวข้อ: " + request['topic'],
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    // ignore: prefer_interpolation_to_compose_strings
                    subtitle: Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      "รายละเอียด: " +
                          (request['detail'].length > 20
                              ? request['detail'].substring(0, 20) + '...'
                              : request['detail']),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ApproveRequestPage(),
                              settings: RouteSettings(arguments: request)));
                    },
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
