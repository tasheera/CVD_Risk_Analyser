import 'package:cvd_risk_analyser/controllers/auth_controller.dart';
import 'package:cvd_risk_analyser/database/database_models/user_provider.dart';
import 'package:cvd_risk_analyser/models/AppUser.dart';
import 'package:get/get.dart';

class UserDataController extends GetxController {
  //variable responsible for handling current logged in user data
  AppUser? currentUser;

  //auth controller instance, used to check whether there is an already authenticated user
  AuthController _authController = AuthController.authInstance;

  //singleton instance
  static UserDataController instance = Get.find();

  //private constructor which is used to create singleton instance
  UserDataController._();

  //function which initially handles user data
  static Future<UserDataController> create() async {
    UserDataController controller = UserDataController._();
    await controller._initController();
    return controller;
  }

  //function which check for firebase user status, checks for database data, and responsible for starting the controller
  Future<void> _initController() async {
    if (_authController.firebaseUser == null) {
      currentUser == null;
    } else {
      //getting email to use it as primary key and fetch other saved user data
      String userEmail = _authController.firebaseUser!.email!;
      try {
        List<Map> userDataList = await _getUserDetails(userEmail);
        if (userDataList.isNotEmpty) {
          currentUser = AppUser.fromMap(userDataList[0]);
        } else {
          throw Exception('No such user');
        }
      } catch (e) {
        e.printError();
        Get.snackbar('Error', 'An error occurred while getting user details',
            snackPosition: SnackPosition.BOTTOM);
        rethrow;
      }
    }
  }
  //function which uses user email as primary key and getting relevant user data
  Future<List<Map>> _getUserDetails(String email) async {
    try {
      List<Map> dataList = await UserProvider.fetchUserDetails(email);
      return dataList;
    } catch (e) {
      print('Error getting user data : ${e.toString()}');
      rethrow;
    }
  }

  //function which saves new user data or updates existing user data
  Future<void> saveUserDetails(AppUser user) async {
    try {
      await UserProvider.insertOrUpdateUser(user.toMap());
      currentUser = user;
    } catch (e) {
      e.printError();
      rethrow;
    }
  }
}
