import 'package:flutter/material.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({super.key});

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
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
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("ขออภัย"),
                            content: const Text("ยังไม่สามารถส่งคำร้องได้"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("ปิด"),
                              ),
                            ],
                          );
                        });
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
