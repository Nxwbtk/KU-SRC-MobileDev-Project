import 'package:flutter/material.dart';

class ViewEditRequestPage extends StatefulWidget {
  final dynamic request;
  const ViewEditRequestPage({super.key, required this.request});

  @override
  State<ViewEditRequestPage> createState() => _ViewEditRequestPageState();
}

class _ViewEditRequestPageState extends State<ViewEditRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ดูและแก้ไขคำร้องขอ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "หัวข้อ: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
