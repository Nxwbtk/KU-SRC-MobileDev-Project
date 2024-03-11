import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final List<Map<String, dynamic>> _courses = [
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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // แสดงตารางเรียน
          Expanded(
            child: ListView.builder(
              itemCount: 5, // จำนวนวันในสัปดาห์
              itemBuilder: (context, dayIndex) {
                String dayName = '';
                switch (dayIndex) {
                  case 0:
                    dayName = 'วันจันทร์';
                    break;
                  case 1:
                    dayName = 'วันอังคาร';
                    break;
                  case 2:
                    dayName = 'วันพุธ';
                    break;
                  case 3:
                    dayName = 'วันพฤหัสบดี';
                    break;
                  case 4:
                    dayName = 'วันศุกร์';
                    break;
                  default:
                    dayName = 'Unknown';
                }

                final coursesOfDay = _courses
                    .where((course) =>
                        course["day"] == dayIndex + 1 &&
                        course["status"] == 'pass')
                    .toList();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dayName,
                      style:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    if (coursesOfDay.isNotEmpty)
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: coursesOfDay.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(coursesOfDay[index]["name"]),
                            trailing: Text(
                              coursesOfDay[index]["time"],
                              style: const TextStyle(fontSize: 16),
                            ),
                          );
                        },
                      ),
                    if (coursesOfDay.isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'ไม่มีวิชา',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
