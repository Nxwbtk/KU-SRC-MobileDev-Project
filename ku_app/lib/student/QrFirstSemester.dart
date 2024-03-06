import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ku_app/student/PayTuitionSecond.dart'; 



class QrFirstSemester extends StatefulWidget {
  @override
  _QrFirstSemesterState createState() => _QrFirstSemesterState();
}

class _QrFirstSemesterState extends State<QrFirstSemester> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Image.asset('assets/imgs/KU2.jpg'),
        ),
        title: Center(
          child: Text(
                    'Qr-code',
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 32,
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
                  
                  Center(
                    child: Container(
                      width: 500,
                      height: 400,
                      color: Color.fromARGB(255, 245, 242, 242),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 95,
                            top: 45,
                            child: Container(
                              width: 325,
                              height: 250,
                              color: Color.fromARGB(255, 10, 191, 94),
                              child: Align(
                                alignment: Alignment.center,
                                child: const Text(
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
                            left: 95,
                            top: 296,
                            child: Container(
                              width: 325,
                              height: 85,
                              color: Color.fromARGB(255, 252, 252, 252),
                              child: Align(
                                alignment: Alignment.center,
                                
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'ยอดเงินรวมทั้งหมด  18200.00  บาท',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 12, 12, 12),
                                      fontSize: 20,
                                    ),
                                  ),
                                  const Text(
                                    '(สแกนเพื่อจ่ายค่าเทอม)',
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











