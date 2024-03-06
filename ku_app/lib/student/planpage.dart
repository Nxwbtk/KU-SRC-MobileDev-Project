import 'package:flutter/material.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanState();
}

class _PlanState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'แผนการเรียน',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        Image.asset(
          'lib/assets/imgs/1.png',
          width: 2000,
        ),
        Image.asset(
          'lib/assets/imgs/2.png',
          width: 2000,
        ),
        Image.asset(
          'lib/assets/imgs/3.png',
          width: 2000,
        ),
        Image.asset(
          'lib/assets/imgs/4.png',
          width: 2000,
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
