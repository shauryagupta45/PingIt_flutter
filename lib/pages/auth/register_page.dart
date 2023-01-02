// ignore_for_file: unused_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ping_it_chat/pages/auth/login_page.dart';
import 'package:ping_it_chat/widget/widgets.dart';
import 'package:ping_it_chat/shared/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
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
                  "Create your own and PingIt account to chat and explore",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Image.asset(
                  "assets/register.png",
                  fit: BoxFit.fill,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: textInputDecoration.copyWith(
                    hintText: "Full Name",
                    prefix: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      fullName = val;
                      // ignore: avoid_print
                      print(fullName);
                    });
                  },

                  //check the validation of email
                  validator: (value) {
                    if (value!.isNotEmpty){
                      return null;
                    } 
                    else{
                      return "Name cannot be empty";
                    }
                       
                  },
                ),
                const SizedBox(
                  height: 15,
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
                    child: const Text("Register",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 236, 218, 218),
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: () {
                      // login();
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Text.rich(TextSpan(
                  text: "Already have an account ? ",
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Login Now",
                      // ignore: unnecessary_const
                      style: const TextStyle(
                          color: Color.fromARGB(255, 71, 50, 75),
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          nextScreen(context, const LoginPage());
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
}
