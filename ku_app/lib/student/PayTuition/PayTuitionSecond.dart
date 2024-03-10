import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ku_app/student/PayTuition/BankFirstSemester.dart';
import 'package:ku_app/student/PayTuition/PayTuitionFirst.dart';
import 'package:ku_app/student/PayTuition/information.dart';

class PayTuitionSecond extends StatefulWidget {
  const PayTuitionSecond({super.key});

  @override
  State<PayTuitionSecond> createState() => _PayTuitionSecondState();
}

class _PayTuitionSecondState extends State<PayTuitionSecond> {
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
                    height: 10,
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
                      DropdownExample(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 500,
                      height: 350,
                      color: const Color.fromARGB(255, 245, 242, 242),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 110,
                              height: 150,
                              color: const Color.fromARGB(255, 10, 191, 94),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'กลางภาค',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 237, 239, 238),
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 110,
                            top: 0,
                            child: Container(
                              width: 490,
                              height: 150,
                              color: const Color.fromRGBO(251, 252, 252, 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      const SizedBox(width: 20),
                                      const Text(
                                        'ยอดรอการชำระ',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 24,
                                        ),
                                      ),
                                      const SizedBox(width: 125),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const information()),
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.insert_drive_file,
                                          color: Color.fromARGB(
                                              255, 9, 9, 9),
                                          size: 50,
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(width: 30),
                                      Text(
                                        '17,900.00',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 24,
                                        ),
                                      ),
                                      SizedBox(width: 140),
                                      Text(
                                        'ข้อมูลที่ค่าเทอม',
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
                            top: 150,
                            child: Container(
                              width: 500,
                              height: 65,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(251, 252, 252, 1),
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(
                                          255, 206, 206, 206)),
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(
                                          255, 206, 206, 206)),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 40),
                                      SizedBox(height: 60),
                                      Text(
                                        'ลงทะเบียนเรียนภาคการศึกษาปกติ',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 120),
                                      Text(
                                        '17900.00',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 18,
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
                            top: 214,
                            child: Container(
                              width: 500,
                              height: 70,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(251, 252, 252, 1),
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(
                                          255, 206, 206, 206)),
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(
                                          255, 206, 206, 206)),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 120),
                                      SizedBox(height: 60),
                                      Text(
                                        'ยอดชำระทั้งหมด',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 158, 249),
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 120),
                                      Text(
                                        '17900.00',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 7, 7, 7),
                                          fontSize: 24,
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
                            top: 284,
                            child: Container(
                              width: 500,
                              height: 70,
                              color: const Color.fromRGBO(251, 252, 252, 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(width: 120),
                                      const SizedBox(height: 60),
                                      const Text(
                                        'ชำระได้ถึงวันที่',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 18,
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
                            width: 500,
                            height: 350,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BankFirstSemester()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: const Color.fromARGB(255, 11, 158, 249),
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
      backgroundColor: const Color.fromARGB(255, 236, 234, 234),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedRegion = 'ภาคต้น';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedRegion,
      onChanged: (String? newValue) {
        setState(() {
          selectedRegion = newValue!;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const PayTuitionFirst()),
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
              color: const Color.fromARGB(255, 10, 191, 94),
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
