import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ระบบการศึกษา',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GradeSystem(),
    );
  }
}

class GradeSystem extends StatefulWidget {
  @override
  _GradeSystemState createState() => _GradeSystemState();
}

class _GradeSystemState extends State<GradeSystem> {
  List<Map<String, dynamic>> subjects = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ระบบการศึกษา'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: subjects.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(subjects[index]['subject']),
                  trailing: Text(subjects[index]['grade']),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                _addSubjectDialog(context);
              },
              child: Text('เพิ่มวิชา'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _addSubjectDialog(BuildContext context) async {
    TextEditingController subjectController = TextEditingController();
    TextEditingController gradeController = TextEditingController();

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('เพิ่มวิชา'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: subjectController,
                decoration: InputDecoration(labelText: 'ชื่อวิชา'),
              ),
              TextField(
                controller: gradeController,
                decoration: InputDecoration(labelText: 'เกรด'),
              ),
            ],
          ),
          actions: [
            FlatButton(
              onPressed: () {
                setState(() {
                  subjects.add({
                    'subject': subjectController.text,
                    'grade': gradeController.text,
                  });
                });
                Navigator.of(context).pop();
              },
              child: Text('เพิ่ม'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('ยกเลิก'),
            ),
          ],
        );
      },
    );
  }
}