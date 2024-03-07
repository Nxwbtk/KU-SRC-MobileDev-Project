import 'package:flutter/material.dart';

class GradePage extends StatefulWidget {
  const GradePage({Key? key}) : super(key: key);

  @override
  State<GradePage> createState() => _GradePageState();
}

class _GradePageState extends State<GradePage> {
  // Sample data for demonstration
  List<String> subjects = [
    "Subject 1",
    "Subject 2",
    "Subject 3",
    "Subject 4",
    "Subject 5",
    "Subject 6",
    "Subject 7",
    "Subject 8",
    "Subject 9",
    "Subject 10"
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
