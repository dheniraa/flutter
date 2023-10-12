import 'package:flutter/material.dart';
import 'package:section4/homePage.dart';
import 'package:section4/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool visibilityPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Usename",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Text(""),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: !visibilityPass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text('Password'),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibilityPass = !visibilityPass;
                        });
                      },
                      icon: visibilityPass
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 20,
              child: RichText(
                text: TextSpan(
                    text: "Lupa Password?",
                    style: TextStyle(color: Colors.blueAccent)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
