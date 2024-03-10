import 'package:flutter/material.dart';
import 'package:ku_app/student/PayTuition/PayTuitionSecond.dart';

class information extends StatefulWidget {
  const information({super.key});

  @override
  _informationState createState() => _informationState();
}

class _informationState extends State<information> {


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
                          backgroundColor: Color.fromARGB(255, 11, 158, 249),
                          minimumSize: Size(100, 50),
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
