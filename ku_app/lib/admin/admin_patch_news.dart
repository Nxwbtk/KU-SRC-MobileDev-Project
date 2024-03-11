import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PatchNewsForm extends StatefulWidget {
  const PatchNewsForm({super.key});

  @override
  State<PatchNewsForm> createState() => _PatchNewsFormState();
}

class _PatchNewsFormState extends State<PatchNewsForm> {
  CollectionReference blogCollection =
      FirebaseFirestore.instance.collection('admin_blog');
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as dynamic;
    final TextEditingController titleController =
        TextEditingController(text: data['title']);
    final TextEditingController detailController =
        TextEditingController(text: data['detail']);
    return Scaffold(
      appBar: AppBar(
        title: const Text('สร้างบทความข่าวสาร'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'หัวข้อ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: detailController,
              maxLines: 10,
              decoration: const InputDecoration(
                labelText: 'รายละเอียด',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                await blogCollection.doc(data.id).update({
                  'title': titleController.text,
                  'detail': detailController.text,
                  'createdDate': DateTime.now(),
                  'createdBy': _auth.currentUser!.email,
                });
                await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('บันทึกข้อมูลสำเร็จ'),
                        content: const Text('บันทึกข้อมูลข่าวสารเรียบร้อยแล้ว'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('ตกลง')),
                        ],
                      );
                    });
                Navigator.pop(context);
              },
              child: const Text('บันทึก'),
            ),
          ],
        ),
      ),
    );
  }
}
