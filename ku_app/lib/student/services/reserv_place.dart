import 'package:flutter/material.dart';

class ReservePlaceService extends StatefulWidget {
  const ReservePlaceService({super.key});

  @override
  State<ReservePlaceService> createState() => ReservePlaceServiceState();
}

class ReservePlaceServiceState extends State<ReservePlaceService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "จองสถานที่",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "กรุณาเลือกห้องที่จะจอง",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: const SizedBox(
                          height: 100,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ชั้น 1 อาคารเทพศาสตร์สถิตย์",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("(Internet Room)"),
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
                                  content: const Text(
                                      "ขณะนี้ห้องนี้ไม่สามารถจองได้"),
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
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: const SizedBox(
                          height: 100,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ชั้น 2 อาคารเทพศาสตร์สถิตย์",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("(Studio Room)"),
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
                                  content: const Text(
                                      "ขณะนี้ห้องนี้ไม่สามารถจองได้"),
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
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: const SizedBox(
                          height: 100,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ชั้น 3 อาคารเทพศาสตร์สถิตย์",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("(RoomService study)"),
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
                                  content: const Text(
                                      "ขณะนี้ห้องนี้ไม่สามารถจองได้"),
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
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: const SizedBox(
                          height: 100,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ชั้น 3 อาคารช่วงฯ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("(Study Room C)"),
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
                                  content: const Text(
                                      "ขณะนี้ห้องนี้ไม่สามารถจองได้"),
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
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
