import 'package:flutter/material.dart';
import 'forgot_password.dart'; 

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 209, 201),
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const Text(
              'Log into Your Account',
              style: TextStyle(fontSize: 24),
            ),
           const SizedBox(height: 20),
           const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                
              },
                style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all<Color>
                  (Color.fromARGB(255, 2, 17, 70)), 
                       ),

              
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all
              <Color>(Color.fromARGB(255, 1, 26, 94)), 
              ),
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
