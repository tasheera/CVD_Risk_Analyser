import 'package:cvd_risk_analyser/components/custom_navigation_bar.dart';
import 'package:cvd_risk_analyser/controllers/navigation_controller.dart';
import 'package:cvd_risk_analyser/controllers/user_data_controller.dart';
import 'package:cvd_risk_analyser/screens/doctor_data_input_screen.dart';
import 'package:flutter/material.dart';
import 'package:cvd_risk_analyser/screens/user_data_input_screen.dart';

class ChartChoose extends StatelessWidget {
  ChartChoose({super.key});

  //Dependency Injection
  UserDataController _userDataController = UserDataController.instance;

  @override
  Widget build(BuildContext context) {
    // return scaffold
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/chartChoose.png",
            fit: BoxFit.cover,
          ), // Background Image
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 280,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.5)),
                  child: const Text(
                    "Choose a chart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w800),
                  ),
                ),

                const SizedBox(
                  // give extra space between widgets
                  height: 20,
                ),

                const ChartChooseButton(
                  name: "Laboratory chart",
                  moveScreen: DoctorInputScreen(
                    number: 3,
                  ),
                ), // create object from class ChartChooseButton for choose chart

                const SizedBox(
                  // give extra space between widgets
                  height: 20,
                ),

                const ChartChooseButton(
                  name: "Non Laboratory chart",
                  moveScreen: DoctorInputScreen(
                    number: 1,
                  ),
                ), // create object from class ChartChooseButton for choose chart

                const SizedBox(
                  // give extra space between widgets
                  height: 20,
                ),

                ChartChooseButton(
                  name: "ML model prediction",
                  moveScreen: UserInputScreen(
                    name: _userDataController.currentUser!.name,
                  ),
                ), // create object from class ChartChooseButton for choose chart
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class for chart chosen button
class ChartChooseButton extends StatelessWidget {
  final Widget moveScreen; // type of chart screen
  final String name; // display name for button
  const ChartChooseButton(
      {super.key, required this.name, required this.moveScreen});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //Dependency injection for configuring navbar icon selection
        NavigationController.instance.currentIndex = 1;

        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          // path to move next screen
          return moveScreen;
        }));
      },
      style: ElevatedButton.styleFrom(
        // customized the button
        backgroundColor: Colors.red,
        padding: const EdgeInsets.all(15),
        fixedSize: const Size(280, 70), // change width and height
      ),
      child: Text(
        name,
        style: const TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal),
      ),
    );
  }
}
