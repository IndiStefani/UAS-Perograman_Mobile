// ignore_for_file: unnecessary_new, avoid_print, unused_field

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:program/bottom/bottom_navi.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();
  TextEditingController usernameInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  late final String _username = 'stefani';
  late final String _password = '12345';
  late String _alert = 'Log In ke halaman';

  void prosesLogin() {
    if (formKey.currentState!.validate()) {
      if (usernameInput.text == _username && passwordInput.text == _password) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavi()));
      } else {
        setState(() {
          _alert = "username atau passwaord anda salah";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          CachedNetworkImage(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            imageUrl:
                "https://i0.wp.com/f1-styx.imgix.net/article/2020/01/30120235/ab3-desain-ruang-santai-dengan-background-abu-abu-gelap.png?fit=1200%2C779&ssl=1",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/launch_logo.png'),
                )),
              )),
          Positioned(
            bottom: 70,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Username'),
                  validator: (value) =>
                      value!.isEmpty ? 'Username can\'t be empty' : null,
                  onSaved: (value) => _username,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Password can\'t be empty' : null,
                  onSaved: (value) => _password,
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  child: const Text('ENTER'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavi()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
