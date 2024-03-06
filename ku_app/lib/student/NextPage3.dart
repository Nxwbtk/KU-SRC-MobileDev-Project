import 'package:flutter/material.dart';
import 'package:flutter/services.dart';






class NextPage3 extends StatefulWidget {
  @override
  _NextPage3State createState() => _NextPage3State();
}

class _NextPage3State extends State<NextPage3> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Image.asset('assets/imgs/KU2.jpg'),
        ),
        title: Center(
          child: Text('ที่จ่ายเงินแล้ว'),
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
                    height: 10,
                  ),
                  Text(
                    'การเงินนิสิต',
                    style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 14),
                      fontSize: 32,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 500,
                      height: 350,
                      color: Color.fromARGB(255, 245, 242, 242),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 110,
                              height: 150,
                              color: Color.fromARGB(255, 10, 191, 94),
                              child: Align(
                                alignment: Alignment.center,
                                child: const Text(
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
                            left: 0,
                            top: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                
                              },
                              child: Text('ชื่อธนาคาร'),
                            ),
                          ),
                          
                            

                        ],
                      ),
                    ),
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




