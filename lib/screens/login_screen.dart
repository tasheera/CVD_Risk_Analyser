import 'package:cvd_risk_analyser/components/input_field.dart';
import 'package:cvd_risk_analyser/screens/forgot_password_screen.dart';

import '../controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//screen for login. style as you please. better use getx for state handling
class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 8),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(
                    controller: controller.nameController,
                  ),
                  // InputField(
                  //   controller: controller.positionController,
                  // ),
                  // InputField(
                  //   controller: controller.hospitalController,
                  // ),
                  InputField(
                    controller: controller.emailController,
                  ),
                  InputField(
                    controller: controller.passwordController,
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: Text('Sign in'),
                        onPressed: controller.onLogin,
                      ),
                      TextButton(
                        child: Text('Forgot Password?'),
                        onPressed: () {
                          Get.to(() => ForgotPasswordScreen());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
