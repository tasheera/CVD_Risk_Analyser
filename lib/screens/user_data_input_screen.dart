import 'package:flutter/material.dart';

class UserInputScreen extends StatefulWidget {
  final String name;
  const UserInputScreen({super.key, required this.name});

  @override
  State<UserInputScreen> createState() => _UserInputScreenState();
}

class _UserInputScreenState extends State<UserInputScreen> {
  @override
  Widget build(BuildContext context) {
        double iconSize = MediaQuery.of(context).size.width * 0.08; // return current screen width 


    return Scaffold(
      
            
    );
  }
}