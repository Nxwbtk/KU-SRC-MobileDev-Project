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
            const Text("เกษตรศาสตร์บางเขน",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                    'https://scontent.fbkk5-5.fna.fbcdn.net/v/t1.6435-9/82135504_1567198150098701_821240155502280704_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=jGd44lTv_8QAX_hdkfs&_nc_ht=scontent.fbkk5-5.fna&oh=00_AfBF2tUct-4d4tPbINvZOqvKFs1oZ7xPVvKYXqE9IcPCUw&oe=66143181')),
            const Text("เกษตรศาสตร์กำแพงแสน",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.all(10),
                child: Image.network('blob:https://o365ku-my.sharepoint.com/8ce6f67a-2059-40ce-b87c-3db78bdbb002')),
          ],
        ),
      ),
    );
  }
}
