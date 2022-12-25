// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, avoid_web_libraries_in_flutter, unused_import

import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ping_it_chat/pages/auth/register_page.dart';
import 'package:ping_it_chat/widget/widgets.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form (
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "PingIt",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "PingIt and connect with the world of your community",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Image.asset(
                  "assets/login_page.png",
                  fit: BoxFit.fill,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: textInputDecoration.copyWith(
                    hintText: "Email",
                    prefix: Icon(
                      Icons.email,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      email = val;
                      print(email);
                    });
                  },

                  //check the validation of email
                  validator: (value) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)
                        ? null
                        : "pls enter a valid email address";
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText:
                      true, //The password you enter will not be displayed
                  textAlign: TextAlign.center,
                  decoration: textInputDecoration.copyWith(
                    hintText: "Password",
                    prefix: Icon(
                      Icons.lock,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  validator: (val) {
                    if (val!.length < 6) {
                      return "Password must be at least 6 characters";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 50.0,
                  height: 25.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text("Sign In",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 236, 218, 218),
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: () {
                      login();
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Text.rich(TextSpan(
                  text: "Don't have an account? ",
                  style: const TextStyle( color: Colors.black, fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign Up here",
                      // ignore: unnecessary_const
                      style: const TextStyle(
                          color: Color.fromARGB(255, 71, 50, 75),
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () { 
                          nextScreen(context, RegisterPage());
                        },
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() {
    if (formKey.currentState!.validate()) {}
  }
}


//Register Screen is quite similar to the login screen. 
