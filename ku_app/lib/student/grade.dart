import 'package:flutter/material.dart';

class GradePage extends StatefulWidget {
  const GradePage({Key? key}) : super(key: key);

  @override
  State<GradePage> createState() => _GradePageState();
}

class _GradePageState extends State<GradePage> {
  // Sample data for demonstration
  List<String> subjects = [
    "01418331 4 หน่วยกิต ระบบปฏิบัติการ | D+ ",
    "01418341 3 หน่วยกิต ทรัพย์สินทางปัญญาและจรรยาบรรณวิชาชีพ | B",
    "01355108 3 หน่วยกิต ภาษาอังกฤษและวัฒนธรรมจากเพลง | A",
    "01418497 3 หน่วยกิต สัมมนา | A",
    "01418496 3 หน่วยกิต เรื่องเฉพาะทางวิทยาการคอมพิวเตอร์ | B+",
    "01418221 3 หน่วยกิต ระบบฐานข้อมูลเบื้องต้น | D",
    "01422111 3 หน่วยกิต การวิเคราะห์และการออกแบบระบบ | C",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grade Page")),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subjects[index]),
            // Additional details for each subject can be added here
            // For example: subtitle, trailing icon, etc.
          );
        },
      ),
    );
  }
}
