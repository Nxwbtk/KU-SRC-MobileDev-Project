import 'package:flutter/material.dart';
import 'package:ku_app/student/PayTuition/QrFirstSemester.dart';

class BankFirstSemester extends StatefulWidget {
  const BankFirstSemester({super.key});

  @override
  _BankFirstSemesterState createState() => _BankFirstSemesterState();
}

class _BankFirstSemesterState extends State<BankFirstSemester> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'ช่องทางการชำระเงิน',
              style: TextStyle(
                color: Color.fromARGB(255, 14, 14, 14),
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'ชำระค่าเทอมกลางภาค',
              style: TextStyle(
                color: Color.fromARGB(255, 14, 14, 14),
                fontSize: 32,
              ),
            ),
            Center(
              child: Container(
                width: 520,
                height: 390,
                color: const Color.fromARGB(255, 245, 242, 242),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 520,
                        height: 100,
                        color: const Color.fromARGB(255, 10, 191, 94),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'เลือกธนาคาร',
                            style: TextStyle(
                              color: Color.fromARGB(255, 237, 239, 238),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 105,
                      child: Container(
                        width: 520,
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 181, 246, 212),
                          border: Border.all(
                            color: isChecked1
                                ? const Color.fromARGB(255, 10, 191, 94)
                                : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 2),
                            Image.asset(
                              'assets/imgs/SCB.png',
                              width: 4,
                              height: 3,
                            ),
                            const Text(
                              'ธนาคารไทยพาณิชย์',
                              style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Checkbox(
                              value: isChecked1,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked1 = newValue ?? false;
                                  if (isChecked1) {
                                    isChecked2 = false;
                                    isChecked3 = false;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 199,
                      child: Container(
                        width: 520,
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 181, 246, 212),
                          border: Border.all(
                            color: isChecked2
                                ? const Color.fromARGB(255, 10, 191, 94)
                                : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 2),
                            Image.asset(
                              'assets/imgs/KB.png',
                              width: 6,
                              height: 3,
                            ),
                            const Text(
                              'ธนาคารกสิกรไทย',
                              style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Checkbox(
                              value: isChecked2,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked2 = newValue ?? false;
                                  if (isChecked2) {
                                    isChecked1 = false;
                                    isChecked3 = false;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 293,
                      child: Container(
                        width: 520,
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 181, 246, 212),
                          border: Border.all(
                            color: isChecked3
                                ? const Color.fromARGB(255, 10, 191, 94)
                                : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 2),
                            Image.asset(
                              'assets/imgs/BK.png',
                              width: 9,
                              height: 3,
                            ),
                            const Text(
                              'ธนาคารกรุงเทพ',
                              style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Checkbox(
                              value: isChecked3,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked3 = newValue ?? false;
                                  if (isChecked3) {
                                    isChecked1 = false;
                                    isChecked2 = false;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    if (isChecked1 || isChecked2 || isChecked3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QrFirstSemester()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              "แจ้งเตือน",
                              style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            content: const Text(
                              "กรุณาเลือก ธนาคาร ก่อน",
                              style: TextStyle(
                                color: Color.fromARGB(255, 241, 57, 57),
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('ปิด'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: const Color.fromARGB(255, 11, 158, 249),
                    minimumSize: const Size(150, 70),
                  ),
                  child: const Text(
                    'เลือก',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
