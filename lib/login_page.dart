import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'check_in_page.dart';

class LoginPage extends StatelessWidget {
  void _signInWithEmailAndPassword(
      BuildContext context, String email, String password) {
    print('Email: $email');
    print('Password: $password');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WorkCheckingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'istockphoto-1367070716-612x612.jpg'), // Provide your avatar image here
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                labelText: 'User Id',
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autofocus: false,
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: BeveledRectangleBorder(),
                padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20),
              ),
              onPressed: () {
                _signInWithEmailAndPassword(context, email, password);
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}