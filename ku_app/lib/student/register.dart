import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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

  List<Map<String, dynamic>> _filteredCourses = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'รายวิชาบังคับ',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          // แสดงรายการวิชาที่เป็นวิชาบังคับ
          ListView.builder(
            shrinkWrap: true,
            itemCount: _courses.length, // จำนวนวิชาบังคับ
            itemBuilder: (context, index) {
              if (_courses[index]["fix"] == 1) {
                return ListTile(
                  title: Text(_courses[index]["name"]),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // ดำเนินการลงทะเบียนเรียน
                    },
                    child: Text('ลงทะเบียน'),
                  ),
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
          SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              // ทำการค้นหาวิชาที่ตรงกับคำค้นหา
              setState(() {
                _filteredCourses = _courses
                    .where((course) => course["name"].contains(value))
                    .toList();
              });
            },
            decoration: InputDecoration(
              labelText: 'ค้นหาวิชาเรียน',
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCourses.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredCourses[index]["name"]),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // ดำเนินการลงทะเบียนเรียน
                    },
                    child: Text('ลงทะเบียน'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
