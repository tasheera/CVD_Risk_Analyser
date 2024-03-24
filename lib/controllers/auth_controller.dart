import 'package:cvd_risk_analyser/HomePage.dart';
import 'package:cvd_risk_analyser/screens/chart_choose_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cvd_risk_analyser/firebase/firebase_instances.dart';


// This controller handles firebase authentication
class AuthController extends GetxController {

  //Singleton instance used for DI
  static AuthController authInstance = Get.find();

  //variable to hold logged on user
  late User? firebaseUser;

  //initing controller assuming no user is already logged in
  @override
  void onInit() {
    super.onInit();
    firebaseUser = null;
  }

  //when the controller is ready, it listens for auth state changes.
  @override
  void onReady() {
    super.onReady();
    auth.authStateChanges().listen((User? user) {
      if (user != null) {
        firebaseUser = user;
      } else {
        firebaseUser = null;
      }
      //based on user's auth status, the following function switches init screen the user sees
      _setInitialScreen(firebaseUser);
    });
  }

  // navigating based on auth
  void _setInitialScreen(User? user) {
    if (user != null) {
      Get.offAll(() => ChartChoose());
    } else {
      Get.offAll(() => HomePage());
    }
  }

  //Function to register users using email and password. Can be used for sign in.
  Future<void> register(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Get.snackbar('Error', e.message!, snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      print(e.toString());
    }
  }

  //This is the function which actually logs the user in communicating with firebase
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Get.snackbar('Error', e.message!, snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  //Function to signout
  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  //This function can be used oin the future to update user password.
  ///// IMPORTANT - Changing passwords require a fresh authentication. Check documentation for more info
  Future<void> updatePassword(
      {required String email,
        required String oldPassword,
        required String newPassword}) async {
    try {
      var cred =
      EmailAuthProvider.credential(email: email, password: oldPassword);

      await firebaseUser
          ?.reauthenticateWithCredential(cred)
          .then((value) async {
        await firebaseUser?.updatePassword(newPassword);
      });
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  //This the function which is used in the forget password situation
  Future<void> resetPassword({required String email}) async {
    try{
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Get.snackbar('Error', e.message!, snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
