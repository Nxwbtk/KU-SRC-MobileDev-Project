import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewEditRequestPage extends StatefulWidget {
  const ViewEditRequestPage({super.key});

  @override
  State<ViewEditRequestPage> createState() => _ViewEditRequestPageState();
}

class _ViewEditRequestPageState extends State<ViewEditRequestPage> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as dynamic;
    final TextEditingController topicController =
        TextEditingController(text: data['topic']);
    final TextEditingController detailController =
        TextEditingController(text: data['detail']);
    CollectionReference requestCollection =
        FirebaseFirestore.instance.collection('std_request');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ดูและแก้ไขคำร้องขอ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: topicController,
                    decoration: const InputDecoration(
                      labelText: "หัวข้อ",
                      border: OutlineInputBorder(),
                    ),
                    readOnly: data['status'] != 0,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: detailController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      labelText: "รายละเอียด",
                      border: OutlineInputBorder(),
                    ),
                    readOnly: data['status'] != 0,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  data['status'] == 0
                      ? ElevatedButton(
                          onPressed: () async {
                            try {
                              await requestCollection.doc(data.id).update({
                                'topic': topicController.text,
                                'detail': detailController.text,
                              });
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("แก้ไขคำร้องขอสำเร็จ"),
                                      content: const Text(
                                          "คำร้องขอของคุณได้รับการแก้ไขเรียบร้อยแล้ว"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("ปิด"),
                                        ),
                                      ],
                                    );
                                  });
                            } catch (e) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("เกิดข้อผิดพลาด"),
                                      content: const Text(
                                          "ไม่สามารถแก้ไขคำร้องขอได้"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("ปิด"),
                                        ),
                                      ],
                                    );
                                  });
                            }
                          },
                          child: const Text("แก้ไขคำร้องขอ"),
                        )
                      : data['status'] == -1
                          ? const Text("คำร้องขอถูกปฏิเสธ")
                          : const Text("คำร้องขอได้รับการอนุมัติแล้ว"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
