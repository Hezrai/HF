import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hf/src/screens/home.dart';
import 'package:hf/src/screens/verify.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) {
                setState(() { _email = value.trim(); } );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (value) {
                setState(() { _password = value.trim(); } );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Text('Log In'),
                onPressed: () {
                  auth.signInWithEmailAndPassword(email: _email, password: _password).then((_) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
                  });
                }
              ),
              ElevatedButton(
                child: Text('Sign Up'),
                onPressed: () {
                  auth.createUserWithEmailAndPassword(email: _email, password: _password).then((_) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerifyScreen()));
                  });
                },
              )
            ]
          )
        ],
      ),
    );
  }
}