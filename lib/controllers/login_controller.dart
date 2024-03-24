import 'package:cvd_risk_analyser/controllers/auth_controller.dart';
import 'package:cvd_risk_analyser/controllers/user_data_controller.dart';
import 'package:cvd_risk_analyser/models/AppUser.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//This is the controller which is responsible for login form validation and authenticating user in login. Also saves user data as well
class LoginController extends GetxController {

  //controllers to hold input text
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  // final positionController = TextEditingController();
  // final hospitalController = TextEditingController();


  //Disposing controllers at the end
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    // positionController.dispose();
    // hospitalController.dispose();
  }

  bool _validateEmail(){
    if (emailController.text.trim().isEmpty) {
      Get.snackbar(
        'Enter email id',
        'Please type your email',
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    //case for invalid email
    if (!emailController.text.trim().isEmail) {
      Get.snackbar(
        'Invalid email',
        'Please type a valid email',
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    return true;
  }

  //function which validates the form
  bool _isValid() {

    //This is a function which checks whether a string has numbers and symbols in addition to text
    bool checkForInvalidString(String input) {
      return RegExp(r'[^a-zA-Z]').hasMatch(input);
    }

    //case for empty name
    if (nameController.text.trim().isEmpty) {
      Get.snackbar(
        'Enter name',
        'Please type your name',
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    //case for invalid name
    if (checkForInvalidString(nameController.text)) {
      Get.snackbar(
        'Invalid name',
        'Please type a valid name',
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    // //case for empty position
    // if (positionController.text.trim().isEmpty) {
    //   Get.snackbar(
    //     'Enter position',
    //     'Please type your position',
    //     snackPosition: SnackPosition.BOTTOM,
    //   );
    //   return false;
    // }
    //
    // //case for invalid position
    // if (checkForInvalidString(positionController.text)) {
    //   Get.snackbar(
    //     'Invalid position',
    //     'Please type a valid position',
    //     snackPosition: SnackPosition.BOTTOM,
    //   );
    //   return false;
    // }

    // //case for empty hospital name
    // if (hospitalController.text.trim().isEmpty) {
    //   Get.snackbar(
    //     'Enter hospital name',
    //     'Please type your hospital name',
    //     snackPosition: SnackPosition.BOTTOM,
    //   );
    //   return false;
    // }
    //
    // //case for invalid hospital name
    // if (checkForInvalidString(hospitalController.text)) {
    //   Get.snackbar(
    //     'Invalid hospital name',
    //     'Please type a valid hospital name',
    //     snackPosition: SnackPosition.BOTTOM,
    //   );
    //   return false;
    // }

    //case for empty email
    if(!_validateEmail())
      {
        return false;
      }

    //case for empty password
    if (passwordController.text.trim().isEmpty) {
      Get.snackbar(
        'Enter a password',
        'Please type your password',
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }

  Future<void> onLogin() async {
    if (_isValid()) {
      try {

        AuthController controller = AuthController.authInstance;
        String email = emailController.text;
        String password = passwordController.text;
        String name = nameController.text;
        // String position = positionController.text;
        // String hospital = hospitalController.text;

        //using AuthController to login user with firebase auth
        await controller.loginWithEmailAndPassword(email, password);

        //saving user data to database
        await UserDataController.instance.saveUserDetails(AppUser(
          email: email,
          name: name,
          // position: position,
          // hospital: hospital,
        ));
      } catch (e) {
        e.printError();
        rethrow;
      }
    }
  }

  //handler for forget password
  Future<void> onForgotPassword() async {
    if(_validateEmail())
      {
        try {
          AuthController controller = AuthController.authInstance;
          String email = emailController.text;
          await controller.resetPassword(email: email);
        } catch (e) {
          e.printError();
        }
      }
  }

  void resetFields()
  {
    nameController.text = '';
    emailController.text = '';
    passwordController.text = '';
  }
}
