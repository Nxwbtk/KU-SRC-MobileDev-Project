import 'package:flutter/material.dart';
import 'package:ku_app/student/PayTuition/pay_tuition_second.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
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
                  const Image(
                    image: AssetImage('lib/assets/imgs/S1.png'),
                  ),
                  const Image(
                    image: AssetImage('lib/assets/imgs/S2.png'),
                  ),
                  const Image(
                    image: AssetImage('lib/assets/imgs/S3.png'),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PayTuitionSecond()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor:
                              const Color.fromARGB(255, 11, 158, 249),
                          minimumSize: const Size(100, 50),
                        ),
                        child: const Text(
                          'หน้าหลัก',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
