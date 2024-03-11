import 'package:flutter/material.dart';

class GradePage extends StatefulWidget {
  const GradePage({Key? key}) : super(key: key);

  @override
  State<GradePage> createState() => _GradePageState();
}

class _GradePageState extends State<GradePage> {
  // Sample data for demonstration
  List<String> subjectsTerm1 = [
    "01418331 4 หน่วยกิต ระบบปฏิบัติการ | D+ ",
    "01418341 3 หน่วยกิต ทรัพย์สินทางปัญญาและจรรยาบรรณวิชาชีพ | B ",
    "01355108 3 หน่วยกิต ภาษาอังกฤษและวัฒนธรรมจากเพลง | A ",
    "01418497 1 หน่วยกิต สัมมนา | A ",
    "01418496 3 หน่วยกิต เรื่องเฉพาะทางวิทยาการคอมพิวเตอร์ | B+ ",
    "01418221 3 หน่วยกิต ระบบฐานข้อมูลเบื้องต้น | D ",
    "01422111 3 หน่วยกิต การวิเคราะห์และการออกแบบระบบ | C ",
  ];

  List<String> subjectsTerm2 = [
    "01418221 3 หน่วยกิต ระบบฐานข้อมูลเบื้องต้น | F ",
    "01355103 3 หน่วยกิต ภาษาอังกฤษเพื่อโอกาสในการทำงาน | C+ ",
    "01418232 3 หน่วยกิต การวิเคราะห์และออกแบบขั้นตอนวิธี | C ",
    "01418233 4 หน่วยกิต ภาษาแอสเซมลบีและสถาปัตยกรรมคอมพิวเตอร์ | A ",
    "01418381 3 หน่วยกิต หลักการสร้างภาพเคลื่อนไหวด้วยคอมพิวเตอร์ | A ",
    "01422111 3 หน่วยกิต หลักสถิติ | W ",
    "03654113 3 หน่วยกิต กิจกรรมทางกายเพื่อชีวิตสมัยใหม่ | A ",
  ];

  // Sample data for Cumulative Units and Overall GPA
  String cumulativeUnitsTerm1 = "Cumulative Units Term 1: 20";
  String overallGPATerm1 = "Overall GPA Term 1: 2.53";

  String cumulativeUnitsTerm2 = "Cumulative Units Term 2: 19";
  String overallGPATerm2 = "Overall GPA Term 2: 2.82";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grade Page")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  "Cumulative GPA: 2.68",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                SizedBox(height: 8),
                Text(
                  "Cumulative Units: 39",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cumulativeUnitsTerm1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  overallGPATerm1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: subjectsTerm1.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(subjectsTerm1[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cumulativeUnitsTerm2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  overallGPATerm2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: subjectsTerm2.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(subjectsTerm2[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
