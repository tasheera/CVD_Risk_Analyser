import 'package:cvd_risk_analyser/HomePage.dart';
import 'package:cvd_risk_analyser/components/custom_navigation_bar.dart';
import 'package:cvd_risk_analyser/controllers/auth_controller.dart';
import 'package:cvd_risk_analyser/controllers/user_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//profile screen. style as you wish.
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  //Dependency Injection
  UserDataController _userDataController = UserDataController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() =>
                Text(
                  !_userDataController.isGuestUser
                      ? 'Hello Dr. ${_userDataController.currentUser!.name}!'
                      : 'Hello Guest User!',
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    if(AuthController.authInstance.firebaseUser != null)
                      {
                        await AuthController.authInstance.signOut();
                      }
                    else
                      {
                        Get.offAll(() => HomePage());
                      }
                  },
                  child: Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }
}
