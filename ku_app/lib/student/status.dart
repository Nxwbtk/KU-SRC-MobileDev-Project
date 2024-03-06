import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<Map<String, dynamic>> _courses = [
    {
      "name": 'Database Systems',
      "day": 3,
      "fix": 1,
      "status": 'pass',
      "time": '10:00-12:00 น.'
    },
    {
      "name": 'System Analysis and Design',
      "day": 2,
      "fix": 1,
      "status": 'wait',
      "time": '9.00-12:00 น.'
    },
    {
      "name": 'Basic Linear Algebra',
      "day": 1,
      "fix": 2,
      "status": '',
      "time": '13:00-16:00 น.'
    },
    {
      "name": 'Seminar',
      "day": 3,
      "fix": 1,
      "status": 'pass',
      "time": '13:00-15:00 น.'
    },
    {
      "name": 'Intellectual Properties and Professional Ethics',
      "day": 5,
      "fix": 1,
      "status": 'pass',
      "time": '16:30-19:30 น.'
    },
    {
      "name": 'Operating Systems',
      "day": 4,
      "fix": 1,
      "status": 'pass',
      "time": '13:00-15:00 น.'
    },
    {
      "name": 'Selected Topic in Computer Science',
      "day": 4,
      "fix": 2,
      "status": 'pass',
      "time": '16:30-19:30 น.'
    },
    {
      "name": 'English and Culture through Songs',
      "day": 1,
      "fix": 2,
      "status": '',
      "time": '16:30-19:30 น.'
    },
    {
      "name": 'Foundation English III',
      "day": 3,
      "fix": 2,
      "status": '',
      "time": '16:30-19:30 น.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'สถานะวิชาที่ลงทะเบียน',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          SizedBox(height: 20),
          // แสดงรายการวิชาที่ลงทะเบียน
          Expanded(
            child: ListView.builder(
              itemCount: _courses.length,
              itemBuilder: (context, index) {
                // Check if the status is provided
                if (_courses[index]["status"] != null &&
                    _courses[index]["status"] != '') {
                  // สร้าง Widget สำหรับแสดงสถานะของวิชา
                  Widget statusWidget;
                  int statusIndex = 0;
                  if (_courses[index]["status"] == 'pass') {
                    statusWidget = Text(
                      'pass',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    );
                    statusIndex = 0;
                  } else if (_courses[index]["status"] == 'wait') {
                    statusWidget = Text(
                      'wait',
                      style: TextStyle(fontSize: 16, color: Colors.orange),
                    );
                    statusIndex = 1;
                  } else if (_courses[index]["status"] == 'fail') {
                    statusWidget = Text(
                      'fail',
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    );
                    statusIndex = 2;
                  } else {
                    return SizedBox
                        .shrink(); // Don't show if status is not recognized
                  }

                  return ListTile(
                    title: Text(_courses[index]["name"]), // แสดงชื่อวิชา
                    trailing: Container(
                      padding: EdgeInsets.all(8),
                      child: statusWidget, // แสดงสถานะ
                    ),
                    // กำหนด key เพื่อใช้ในการเรียงลำดับ
                    key: ValueKey<int>(statusIndex),
                  );
                } else {
                  return SizedBox
                      .shrink(); // Don't show if status is not provided
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
