import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ku_app/student/PayTuitionSecond.dart'; 




class information extends StatefulWidget {
  @override
  _informationState createState() => _informationState();
}

class _informationState extends State<information> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Image.asset('assets/imgs/KU2.jpg'),
        ),
        title: Center(
          child: Text(
                    'ข้อมูลค่าเทอม',
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                    ),
                  ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 10, 191, 94),
      ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  
                   Image.asset('assets/imgs/S1.png'),
                   Image.asset('assets/imgs/S2.png'),
                   Image.asset('assets/imgs/S3.png'),

                 const SizedBox(height: 20),

                 Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PayTuitionSecond()), 
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, 
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            backgroundColor: Color.fromARGB(255, 11, 158, 249),
                            minimumSize: Size(150, 70), 
                          ),
                          child: Text(
                            'หน้าหลัก',
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

