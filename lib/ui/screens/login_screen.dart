import 'package:flutter/material.dart';

import '../../custom_widget/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 36, 100),
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(250)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.purple]),
            ),
            child: Center(
              child: Column(children: [
                Image.asset(
                  'images/flash-removebg-preview.png',
                  scale: 0.8,
                  height: 200,
                  width: 100,
                ),
                Text(
                  'FaceCard',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: BottomButton(
              color: Colors.white,
              icon: Icons.network_cell,
              title: 'SignUp with Google',
              Style: TextStyle(color: Color.fromARGB(255, 88, 88, 88)),
              onPressed: () {},
            ),
          ),
          BottomButton(
            color: Color.fromARGB(255, 88, 38, 226),
            icon: Icons.facebook,
            title: 'SignUp with Facebook',
            Style: TextStyle(color: Colors.white),
            onPressed: () {},
          ),
          SizedBox(height: 10),
          Text(
            "OR",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),
          BottomButton(
            color: Colors.yellow,
            icon: Icons.edit,
            title: 'SignUp with Manually',
            Style: TextStyle(color: Colors.white),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90, left: 90),
            child: Row(
              children: [
                Text(
                  'Already Have an Account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.yellow),
                    ))
              ],
            ),
          ),
          SizedBox(height: 10)
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
