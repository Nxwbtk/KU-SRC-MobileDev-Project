import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _HomePageState();
}

class _HomePageState extends State<SchedulePage> {
  List<Lesson> schedule = [
    Lesson(
      time: "Mon 10:00 - 12:00",
      details: "01418333-60 Automata theory",
      room: "ห้อง 17201",
    ),
    // รายการเรียนเพิ่มเติมสามารถเพิ่มต่อได้ตามต้องการ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        columns: [
          DataColumn(label: Text('Time')),
          DataColumn(label: Text('Details')),
          DataColumn(label: Text('Room')),
        ],
        rows: schedule.map((lesson) {
          return DataRow(cells: [
            DataCell(Text(lesson.time)),
            DataCell(Text(lesson.details)),
            DataCell(Text(lesson.room)),
          ]);
        }).toList(),
      ),
    );
  }
}

class Lesson {
  final String time;
  final String details;
  final String room;

  Lesson({
    required this.time,
    required this.details,
    required this.room,
  });
}
