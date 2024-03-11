import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ku_app/student/PayTuition/BankFirstSemester.dart';
import 'package:ku_app/student/PayTuition/PayTuitionSecond.dart';
import 'package:ku_app/student/PayTuition/information.dart';

class PayTuitionFirst extends StatefulWidget {
  const PayTuitionFirst({super.key});

  @override
  State<PayTuitionFirst> createState() => _PayTuitionFirstState();
}

class _PayTuitionFirstState extends State<PayTuitionFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'การเงินนิสิต',
                    style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 14),
                      fontSize: 32,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        DateFormat.yMMMMd().format(DateTime.now()),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 10, 191, 94),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const DropdownExample2(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 380,
                      height: 219,
                      color: const Color.fromARGB(255, 245, 242, 242),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 90,
                              height: 100,
                              color: Colors.green[800],
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'ปลายภาค',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 237, 239, 238),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 90,
                            top: 0,
                            child: Container(
                              width: 290,
                              height: 100,
                              color: const Color.fromRGBO(251, 252, 252, 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      const Text(
                                        'ยอดรอการชำระ',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(width: 90),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const InformationPage()),
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.insert_drive_file,
                                          color: Color.fromARGB(255, 9, 9, 9),
                                          size: 50,
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(width: 30),
                                      Text(
                                        '18,200.00',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 90),
                                      Text(
                                        'ข้อมูลที่ค่าเทอม',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 100,
                            child: Container(
                              width: 380,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(251, 252, 252, 1),
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 206, 206, 206)),
                                  bottom: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 206, 206, 206)),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 40),
                                      SizedBox(height: 35),
                                      Text(
                                        'ลงทะเบียนเรียนภาคการศึกษาปกติ',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(width: 70),
                                      Text(
                                        '18,200.00',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 140,
                            child: Container(
                              width: 380,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(251, 252, 252, 1),
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 206, 206, 206)),
                                  bottom: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 206, 206, 206)),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 40),
                                      SizedBox(height: 35),
                                      Text(
                                        'ยอดชำระทั้งหมด',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 158, 249),
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 120),
                                      Text(
                                        '18,200.00',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 179,
                            child: Container(
                              width: 380,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(251, 252, 252, 1),
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 206, 206, 206)),
                                  bottom: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 206, 206, 206)),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(width: 40),
                                      const SizedBox(height: 35),
                                      const Text(
                                        'ชำระได้ถึงวันที่',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        DateFormat.yMMMMd().format(
                                            DateTime.now()
                                                .add(const Duration(days: 30))),
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 247, 17, 5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 380,
                            height: 219,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BankFirstSemester()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor:
                              const Color.fromARGB(255, 11, 158, 249),
                          minimumSize: const Size(150, 70),
                        ),
                        child: const Text(
                          'เลือกรูปแบบ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 240, 240),
    );
  }
}

class DropdownExample2 extends StatefulWidget {
  const DropdownExample2({super.key});

  @override
  State<DropdownExample2> createState() => _DropdownExampleState2();
}

class _DropdownExampleState2 extends State<DropdownExample2> {
  String selectedRegion = 'ภาคปลาย';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedRegion,
      onChanged: (String? newValue) {
        setState(() {
          selectedRegion = newValue!;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const PayTuitionSecond()),
          );
        });
      },
      dropdownColor: const Color.fromARGB(255, 248, 249, 249),
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      items: <String>['ภาคต้น', 'ภาคปลาย']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Colors.green[800],
            ),
            child: Text(
              value,
              style: const TextStyle(color: Color.fromARGB(255, 251, 250, 250)),
            ),
          ),
        );
      }).toList(),
    );
  }
}
