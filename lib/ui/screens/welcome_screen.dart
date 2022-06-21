import 'dart:async';

import 'package:facecard/custom_widget/custom_button.dart';
import 'package:facecard/custom_widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.purple]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'images/flash-removebg-preview.png',
                      scale: 0.8,
                      height: 100,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    newcard(
                      hinttext: 'Enter your  Email',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    newcard(
                      hinttext: 'Enter your Pasword ',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 20, bottom: 20, left: 60, right: 50),
                      child: BottomButton(
                        title: 'LogIn',
                        Style: TextStyle(color: Colors.white),
                        onPressed: () {},
                        color: Color.fromARGB(255, 29, 36, 100),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
