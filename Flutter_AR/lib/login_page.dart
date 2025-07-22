import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userTxtCtr = TextEditingController();

  TextEditingController pwdTxtCtr = TextEditingController();

  String msg = "Message here";

  @override
  Widget build(BuildContext context) {
    print("from build method");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: const Color.fromARGB(255, 86, 30, 216),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 50, color: Colors.deepPurple),
              ),
              Text('Username'),
              TextField(controller: userTxtCtr),
              Text('Password'),
              TextField(controller: pwdTxtCtr, obscureText: true),
              ElevatedButton(
                onPressed: () {
                  print(
                    "Button clicked " + userTxtCtr.text + " " + pwdTxtCtr.text,
                  );
                  if (userTxtCtr.text == pwdTxtCtr.text) {
                    msg = "Welcome " + userTxtCtr.text;
                  } else {
                    msg = "Invalid credentials";
                  }
                  print(msg);
                  setState(() {});
                },
                child: Text('Login'),
              ),
              Text(msg),
            ],
          ),
        ),
      ),
    );
  }
}
