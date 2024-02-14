import 'package:flutter/material.dart';

class AdminRegisterAccount extends StatefulWidget {
  const AdminRegisterAccount({Key? key}) : super(key: key);

  @override
  State<AdminRegisterAccount> createState() => _AdminRegisterAccountState();
}

class _AdminRegisterAccountState extends State<AdminRegisterAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nisit KU V.2 admin'),
        backgroundColor: Colors.grey[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Register Account', style: TextStyle(fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text(
              "Back"
            ))
          ],
        ),
      ),
    );
  }
}
