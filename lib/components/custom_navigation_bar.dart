import 'package:cvd_risk_analyser/controllers/navigation_controller.dart';
import 'package:cvd_risk_analyser/screens/chart_choose_screen.dart';
import 'package:cvd_risk_analyser/screens/profile_screen.dart';
import 'package:cvd_risk_analyser/screens/report_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({
    super.key,
    this.height = 80,
    this.backgroundColour,
    // These variables are responsible for adjusting height, width and border radius of selected rounded rectangle
    this.focusedBorderRadius,
    this.focusedHeight = 40,
    this.focusedWidth = 60,
    this.iconColour,
    this.titleColour,
  });

  double height;
  Color? backgroundColour;
  double? focusedBorderRadius;
  Color? focusedColour;
  Color? iconColour;
  Color? titleColour;
  double focusedHeight;
  double focusedWidth;

  Widget buildNavigationButton(
      {required String title,
      required IconData icon,
      required int index,
      required void Function() buttonOnTap}) {
    //This builder manages the button state whether is selected or not
    return GetBuilder<NavigationController>(
      builder: (controller) => GestureDetector(
        onTap: () {
          controller.currentIndex = index;
          buttonOnTap();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 60,
              decoration: ShapeDecoration(
                color:
                    //index == 1 is HomeScreen and this case, pressing it means, navigating to it
                    index != 1 && controller.currentIndex == index
                        ? focusedColour ?? Colors.red.shade300
                        : Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(focusedBorderRadius ?? 35.0),
                ),
              ),
              child: Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColour ?? Colors.red.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Here, Get.to() is used instead of Navigator for navigation between screens
          buildNavigationButton(
            title: 'Reports',
            icon: Icons.bar_chart_outlined,
            index: 0,
            buttonOnTap: () {
              Get.to(
                () => ReportScreen(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 5),
              );
            },
          ),
          buildNavigationButton(
            title: 'Home',
            icon: Icons.home_outlined,
            index: 1,
            buttonOnTap: () {
              Get.to(
                () => ChartChoose(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 5),
              );
            },
          ),
          buildNavigationButton(
              title: 'Profile',
              icon: Icons.group_outlined,
              index: 2,
              buttonOnTap: () {
                Get.to(
                  () => ProfileScreen(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 5),
                );
              }),
        ],
      ),
    );
  }
}
