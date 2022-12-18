// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, avoid_web_libraries_in_flutter, unused_import

import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ping_it_chat/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
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
                      )),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: textInputDecoration.copyWith(
                    hintText: "Password",
                    prefix: Icon(
                      Icons.lock,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
