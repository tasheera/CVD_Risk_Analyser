import 'package:flutter/cupertino.dart';
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
                    Text(
                      'CVD',
                      style: TextStyle(
                        fontSize: 45,
                        color: Color(0xFF1D2366),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Analysis',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF006D77),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 120),
                    Text(
                      'Live Healthy Life',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF006D77),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Be Happy!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF006D77),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 251,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          //login functionality
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFD80032), // Set button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 251,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          //"Use as a guest" functionality
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFD80032), // Set button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          'USE AS A GUEST',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
