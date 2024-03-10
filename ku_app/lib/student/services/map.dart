import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แผนที่ในมหาวิทยาลัย',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("เกษตรศาสตร์ วิทยาเขตหลัก",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                    'https://scontent.fbkk5-5.fna.fbcdn.net/v/t1.6435-9/82135504_1567198150098701_821240155502280704_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=jGd44lTv_8QAX_hdkfs&_nc_ht=scontent.fbkk5-5.fna&oh=00_AfBF2tUct-4d4tPbINvZOqvKFs1oZ7xPVvKYXqE9IcPCUw&oe=66143181')),
            const Text("เกษตรศาสตร์ วิทยาเขตกำแพงแสน",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                    'https://kps.ku.ac.th/v8/images/images_content/2022/307582739_767374904365642_5004282284247624443_n.jpg')),
            const Text("เกษตรศาสตร์ วิทยาเขตศรีราชา",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.src.ku.ac.th/th/info/img/Map61.png')),
            const Text("เกษตรศาสตร์ วิทยาเขตเฉลิมพระเกียรติ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                    'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.6435-9/107703327_2556986074563831_1152969285620294172_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFGqHKnFGiugUB_Ytvd_Wp0lPK8NrqzKZSU8rw2urMplBzrdk-9XbAJwa8MkLQhxiQpiIJRWWpSBU9kKgBjJqNM&_nc_ohc=v_qqbBBuXDgAX9f31Qi&_nc_ht=scontent.fbkk5-6.fna&oh=00_AfDdGsWtfOxVJ14ininhAhRtJpxhTdvJtfLMf_Y6-unYng&oe=661511FD')),
          ],
        ),
      ),
    );
  }
}
