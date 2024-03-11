import 'package:flutter/material.dart';
import 'package:ku_app/main.dart';

class QrSecondSemester extends StatefulWidget {
  const QrSecondSemester({super.key});

  @override
  State<QrSecondSemester> createState() => _QrSecondSemesterState();
}

class _QrSecondSemesterState extends State<QrSecondSemester> {
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
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 500,
                      height: 400,
                      color: const Color.fromARGB(255, 245, 242, 242),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 45,
                            top: 45,
                            child: Container(
                              width: 325,
                              height: 250,
                              color: const Color.fromARGB(255, 10, 191, 94),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'QR',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 237, 239, 238),
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 45,
                            top: 296,
                            child: Container(
                              width: 325,
                              height: 85,
                              color: const Color.fromARGB(255, 252, 252, 252),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ยอดเงินรวมทั้งหมด  17900.00  บาท',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '(สแกนเพื่อชำระค่าเทอม)',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 240, 38, 38),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text(
                                    "ชำระสำเร็จแล้ว",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 60, 239, 5),
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  content: const Text(
                                    "กรุณา กดปุ่มยืนยันเพื่อกลับไปหน้าหลัก",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const MyApp()),
                                        );
                                      },
                                      child: const Text('ยืนยัน'),
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
                          backgroundColor:
                              const Color.fromARGB(255, 11, 158, 249),
                          minimumSize: const Size(150, 70),
                        ),
                        child: const Text(
                          'ชำระแล้ว',
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
          ],
        ),
      ),
    );
  }
}
