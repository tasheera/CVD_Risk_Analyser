import 'package:cvd_risk_analyser/controllers/auth_controller.dart';
import 'package:cvd_risk_analyser/database/database_models/user_provider.dart';
import 'package:cvd_risk_analyser/models/AppUser.dart';
import 'package:get/get.dart';

class UserDataController extends GetxController {
  //variable responsible for handling current logged in user data
  AppUser? currentUser;

  //This observable variable now handles guest user status
  RxBool _isGuestUser = false.obs;
  bool get isGuestUser => _isGuestUser.value;
  set isGuestUser(bool value) {
    _isGuestUser.value = value;
    update();
  }

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
      _isGuestUser.value = true;
      update();
    } else {
      //getting email to use it as primary key and fetch other saved user data
      String userEmail = _authController.firebaseUser!.email!;
      try {
        List<Map> userDataList = await _getUserDetails(userEmail);
        if (userDataList.isNotEmpty) {
          currentUser = AppUser.fromMap(userDataList[0]);
          _isGuestUser.value = false;
        } else {
          _isGuestUser.value = true;
          throw Exception('No such user');
        }
      } catch (e) {
        _isGuestUser.value = true;
        e.printError();
        Get.snackbar('Error', 'An error occurred while getting user details',
            snackPosition: SnackPosition.BOTTOM);
        rethrow;
      }
      finally{
        update();
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
      _isGuestUser.value = false;
    } catch (e) {
      _isGuestUser.value = true;
      e.printError();
      rethrow;
    }
    finally{
      update();
    }
  }

  Future<void> refreshController() async {
    await _initController();
  }
}
