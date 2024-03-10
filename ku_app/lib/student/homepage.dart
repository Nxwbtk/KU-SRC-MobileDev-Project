import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ku_app/student/services/map.dart';
import 'package:ku_app/student/services/request_page.dart';
import 'package:ku_app/student/services/reserv_place.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final carouselImg = [
    "https://pbs.twimg.com/media/GBnKNRraIAA_ity?format=jpg&name=large",
    "https://scontent.fbkk5-7.fna.fbcdn.net/v/t39.30808-6/428708214_901306895125740_326121659884883406_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF1mK9nTbNZ0a872JweKGp1wQZ0BZ9rBXLBBnQFn2sFckF0sT_CeSIrxdsPwPm_2xBRR2xHDh45X0SSWJY8HwIT&_nc_ohc=klqSd-06Z8kAX9zIAP1&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfDrqfnk7udb_w088QSpbH0yDbq74KUVlHoEH4yQRK3kmw&oe=65F0D732",
    "https://medias.thansettakij.com/uploads/images/contents/w1024/2024/01/NOqZWRFgXo8FvpM3LHKR.webp?x-image-process=style/lg-webp"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            FlutterCarousel(
              options: CarouselOptions(
                  height: 250,
                  showIndicator: true,
                  slideIndicator: const CircularSlideIndicator()),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.network(
                          carouselImg[i - 1],
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.center,
                      child: Text("ตารางกิจกรรม",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text("ข่าวสารนิสิต",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  ListTile(
                    title: Text("ข่าวสาร 1"),
                    subtitle: Text("รายละเอียดข่าวสาร 1"),
                  ),
                  ListTile(
                    title: Text("ข่าวสาร 2"),
                    subtitle: Text("รายละเอียดข่าวสาร 2"),
                  ),
                  ListTile(
                    title: Text("ข่าวสาร 3"),
                    subtitle: Text("รายละเอียดข่าวสาร 3"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("บริการสำหรับนิสิต",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          child: const SizedBox(
                            height: 100,
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.map),
                                  Text("จองสถานที่"),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ReservePlaceService()));
                          },
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          child: const SizedBox(
                            height: 100,
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.pin_drop),
                                  Text("แผนที่"),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MapPage()));
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          child: const SizedBox(
                            height: 100,
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.book),
                                  Text("สำนักงานหอสมุด"),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("ขออภัย"),
                                    content:
                                        const Text("ขณะนี้ไม่อยู่ในเวลาทำการ"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("ยืนยัน"),
                                      ),
                                    ],
                                  );
                                });
                          },
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          child: const SizedBox(
                            height: 100,
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.headset),
                                  Text("ส่งคำร้อง/แจ้งปัญหา"),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RequestPage()));
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
