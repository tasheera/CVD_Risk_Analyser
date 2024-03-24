import '../controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//screen for forgot password. style as you wish. better use getx for state handling
class ForgotPasswordScreen extends GetView<LoginController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Reset Password',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 12,
              ),
              Text('Enter email so we can send a reset password link'),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextFormField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  labelText: 'Enter email',
                  border: const OutlineInputBorder(),
                  isDense: true,
                  hintText: 'Enter email',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                  onPressed: () async {
                    await controller.onForgotPassword();
                  },
                  child: Text('Send Password reset email'))
            ],
          ),
        ),
      ),
    );
  }
}
