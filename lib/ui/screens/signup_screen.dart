import 'package:facecard/custom_widget/custom_button.dart';
import 'package:facecard/custom_widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text('Sign Up'),
          backgroundColor: Color.fromARGB(255, 29, 36, 100),
          leading: InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  backgroundColor: Color.fromARGB(255, 29, 36, 100),
                ),
              ),
            ),
            Text(
              'Upload Profile Photo',
              style: TextStyle(
                color: Color.fromARGB(255, 122, 119, 119),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            newcard(
              hinttext: 'User Name',
              prefixIcon: Icon(
                Icons.person,
                color: Colors.yellow,
              ),
            ),
            newcard(
              hinttext: 'Mobile Number',
              prefixIcon: Icon(
                Icons.call,
                color: Colors.yellow,
              ),
            ),
            newcard(
              hinttext: 'Location',
              prefixIcon: Icon(
                Icons.location_history,
                color: Colors.yellow,
              ),
            ),
            newcard(
              hinttext: 'Email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.yellow,
              ),
            ),
            newcard(
              hinttext: 'Pasword',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 0,
                bottom: 0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.black,
                      ),
                      Text('I Agreed with the'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms & Conndition',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                      Text('and'),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('the'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                Text('of FaceCard'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 0, left: 60, right: 50),
              child: BottomButton(
                title: 'Continue',
                Style: TextStyle(color: Colors.white),
                onPressed: () {},
                color: Color.fromARGB(255, 29, 36, 100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 40),
              child: Row(
                children: [
                  Text(
                    'Already Have an Account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.yellow),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
