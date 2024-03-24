import 'package:cvd_risk_analyser/controllers/login_controller.dart';
import 'package:cvd_risk_analyser/controllers/navigation_controller.dart';
import 'package:cvd_risk_analyser/controllers/user_data_controller.dart';
import 'package:cvd_risk_analyser/screens/login_screen.dart';
import 'package:cvd_risk_analyser/screens/user_data_input_screen.dart';
import 'package:cvd_risk_analyser/signup_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 190, 0, 0),
                  Colors.red.shade900
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'CVD',
                        style: TextStyle(
                          fontSize: 45,
                          color: Color(0xFF1D2366),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Analysis',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF006D77),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 80),
                      const Text(
                        'Live Healthy Life',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF006D77),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Be Happy!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF006D77),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 251,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            //TODO Link login screen
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return LoginFormScreen();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xFFD80032), // Set button color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 251,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () async {

                            //Dependency Injection
                            NavigationController.instance.currentIndex = 1;

                            //Dependency Injection
                            UserDataController.instance.isGuestUser = true;

                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return const UserInputScreen(name: "Guest");
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xFFD80032), // Set button color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            'USE AS A GUEST',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  // path to move next screen
                                  return const SignupScreen();
                                }));
                              },
                              child: Text("Sign up!")),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
