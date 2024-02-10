import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('lib/assets/imgs/KU_SubLogo.png'),
              width: 300,
              height: 300,
            ),
            SizedBox(
              width: 200,
              height: 75,
              child: TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                controller: emailController,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              height: 75,
              child: TextFormField(
                maxLength: 50,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
