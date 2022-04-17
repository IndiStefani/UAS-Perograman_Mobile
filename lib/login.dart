// ignore_for_file: unnecessary_new, avoid_unnecessary_containers, deprecated_member_use, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreen createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  final formKey = new GlobalKey<FormState>();

  late String _email;
  late String _password;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _email, password: _password)) as User;
        print('Signed In: ${user.uid}');
      } catch (e) {
        print('Error $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Sign In'),
      ),
      body: new Container(
        child: Form(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value!.isEmpty ? 'Email can\'t be empty' : null,
                onSaved: (value) => _email,
              ),
              new TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) =>
                    value!.isEmpty ? 'Password can\'t be empty' : null,
                onSaved: (value) => _password,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
