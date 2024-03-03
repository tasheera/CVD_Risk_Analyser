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

  
  final TextEditingController _signupEmailController = TextEditingController(); // controller for email text field
  final TextEditingController _signupPasswordController = TextEditingController(); // controller for password text field
  final TextEditingController _signupCodeController = TextEditingController();// controller for code text field


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
                Text("Email address", textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.blue),),
                TextFormField(
                  controller: _signupEmailController,
                  decoration: InputDecoration(
                    hintText: "someone@email.com",
                    hintStyle: TextStyle(color: Colors.grey)
                    
                  ),
                ),

                const SizedBox(height: 20),

                Text("Password", textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.blue),),
                TextFormField(
                  controller: _signupPasswordController,
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(color: Colors.grey)
                    
                  ),
                ),

               const SizedBox(height: 20),

               Text("Code number", textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.blue),),
                TextFormField(
                  controller: _signupCodeController,
                  decoration: InputDecoration(
                    hintText: "8 digit number",
                    hintStyle: TextStyle(color: Colors.grey)
                    
                  ),
                ),

                const SizedBox(height: 20,),


                   
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

