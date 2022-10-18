import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 800,
              width: 400,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Positioned(
              top: 200,
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24, top: 30),
                height: 800,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textFieldAuth("username", "masukan username...",
                        const Icon(Icons.person)),
                    textFieldAuth(
                        "email", "masukan email...", const Icon(Icons.email)),
                    textFieldAuth("password", "masukan password...",
                        const Icon(Icons.remove_red_eye)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column textFieldAuth(String username, String hintText, Widget icon) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "$username",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TextField(
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 12),
              hintText: "$hintText",
              suffixIcon: IconButton(onPressed: () {}, icon: icon)),
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
