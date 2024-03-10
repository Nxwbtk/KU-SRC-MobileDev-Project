import 'package:flutter/material.dart';

class ViewEditRequestPage extends StatefulWidget {
  const ViewEditRequestPage({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Test")
          ],
        ),
      ),
    );
  }
}
