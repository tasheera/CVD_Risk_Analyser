import 'package:cvd_risk_analyser/components/input_field.dart';
import 'package:cvd_risk_analyser/controllers/login_controller.dart';
import 'package:cvd_risk_analyser/screens/chart_choose_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormScreen extends GetView<LoginController> {
  LoginFormScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log-In "),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              //can add many items

              InputField(
                controller: controller.nameController,
                hintText: 'Enter Your Name',
                maxLength: 25,
              ),
              InputField(
                controller: controller.emailController,
                hintText: 'Enter Your Email',
              ),
              InputField(
                controller: controller.passwordController,
                hintText: 'Enter Your Password',
                obscureText: true,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () async {
                  await controller.onLogin();
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () async {
                  await controller.onForgotPassword();
                },
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
