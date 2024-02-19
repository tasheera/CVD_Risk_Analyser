import 'package:cvd_risk_analyser/chart_choose_screen.dart';
import 'package:cvd_risk_analyser/doctor_data_input_screen.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget{
  const Navbar({super.key});

  @override
  NavbarState createState()=> NavbarState();
}

class NavbarState extends State<Navbar>{
  int index = 0;
  final screens = [
    ChartChoose(),
    DoctorInputScreen()
  ];
  @override
  Widget build(BuildContext context)=> Scaffold(
    body: screens [index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.red.shade100,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor: Colors.red.shade300,
        selectedIndex: index,
        onDestinationSelected: (index) =>
          setState(() => this.index = index),
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.bar_chart_outlined),
              label: 'Reports'),
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.group_outlined),
              label: 'Profile'),
        ]
      ),
    ),
  );
}