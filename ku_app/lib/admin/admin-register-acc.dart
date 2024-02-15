import 'package:flutter/material.dart';

class AdminRegisterAccount extends StatefulWidget {
  const AdminRegisterAccount({Key? key}) : super(key: key);

  @override
  State<AdminRegisterAccount> createState() => _AdminRegisterAccountState();
}

class _AdminRegisterAccountState extends State<AdminRegisterAccount> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final majorController = TextEditingController();
  final facultyController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nisit KU V.2 admin'),
        backgroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'ชื่อจริง',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: firstNameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'นามสกุล',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: lastNameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'คณะ',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: facultyController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'สาขา',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: majorController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'อีเมล',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'รหัสผ่าน',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: passwordController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'ยืนยันรหัสผ่าน',
                      counter: SizedBox(
                        height: 0,
                        width: 0,
                      )),
                  controller: confirmPasswordController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text("สร้างบัญชี", style: TextStyle(color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
