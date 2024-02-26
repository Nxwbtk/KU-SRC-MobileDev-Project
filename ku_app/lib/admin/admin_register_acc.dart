import 'package:awesome_select/awesome_select.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminRegisterAccount extends StatefulWidget {
  const AdminRegisterAccount({super.key});

  @override
  State<AdminRegisterAccount> createState() => _AdminRegisterAccountState();
}

class _AdminRegisterAccountState extends State<AdminRegisterAccount> {
  CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users_collection');
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final majorController = TextEditingController();
  final facultyController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String facultyValue = "F1";
  String majorValue = "E1";
  String role = "student";

  List<S2Choice<String>> facultyOptions = [
    S2Choice(value: "F1", title: "คณะวิศวะกรรมศาสตร์"),
  ];

  List<S2Choice<String>> majorOptions = [
    S2Choice(value: "E1", title: "วิศวกรรมคอมพิวเตอร์"),
    S2Choice(value: "E2", title: "วิศวกรรมไฟฟ้า"),
  ];

  List<S2Choice<String>> userRoles = [
    S2Choice(value: "student", title: "นิสิต"),
    S2Choice(value: "admin", title: "ผู้ดูแลระบบ"),
  ];

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
              const Text(
                "สร้างบัญชี",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: false,
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
                  obscureText: false,
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
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SmartSelect<String>.single(
                    title: "เลือกคณะ",
                    selectedValue: facultyValue,
                    choiceItems: facultyOptions,
                    onChange: (state) {
                      setState(() {
                        facultyValue = state.value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SmartSelect<String>.single(
                    title: "เลือกสาขา",
                    selectedValue: majorValue,
                    choiceItems: majorOptions,
                    onChange: (state) {
                      setState(() {
                        majorValue = state.value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  maxLength: 50,
                  obscureText: false,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SmartSelect<String>.single(
                    title: "เลือกประเภทผู้ใช้",
                    selectedValue: role,
                    choiceItems: userRoles,
                    onChange: (state) {
                      setState(() {
                        role = state.value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(child: CircularProgressIndicator());
                          });
                      try {
                        if (passwordController.text !=
                            confirmPasswordController.text) {
                          Navigator.pop(context);
                          await showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("รหัสผ่านไม่ตรงกัน"),
                                    content: const Text(
                                        "กรุณากรอกรหัสผ่านใหม่อีกครั้ง"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("ตกลง"),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        } else {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((_) async {
                            await usersCollection
                                .doc(emailController.text)
                                .set({
                              'email': emailController.text,
                              'first_name': firstNameController.text,
                              'last_name': lastNameController.text,
                              'faculty': facultyValue,
                              'major': majorValue,
                              'role': role,
                              'year': 1
                            });
                          });
                          Navigator.pop(context);
                          await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("สร้างบัญชีสำเร็จ"),
                                  content: const Text(
                                      "บัญชีของคุณถูกสร้างเรียบร้อยแล้ว"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("กลับเมนูหลัก"),
                                    ),
                                  ],
                                );
                              });
                          Navigator.pop(context);
                        }
                      } on FirebaseAuthException catch (e) {
                        await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("เกิดข้อผิดพลาด"),
                                content: Text(e.message!),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("ตกลง"),
                                  ),
                                ],
                              );
                            });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text(
                      "สร้างบัญชีผู้ใช้",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
