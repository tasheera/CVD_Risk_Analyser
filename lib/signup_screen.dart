import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final GlobalKey <FormState> _formKey =GlobalKey();// create global key object form key validate




  @override
  Widget build(BuildContext context) {

        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey, 
          child: Container(
            decoration: BoxDecoration(
              
            ),
            margin:  const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [



                   
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                           
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        
                      ),
                      onPressed: (){
                        authTest("emailtt@gmil.com", "123456");
                        },
                      child: Text("Sign Up", style: TextStyle(color: Colors.white,fontSize:15),),
                      ),


                                                 
                  ],
                ),
                




              ],
            ),
          )
        )
      ),

    );
  }
}

void authTest(String email, String password ) async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}

