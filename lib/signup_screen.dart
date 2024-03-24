import 'package:cvd_risk_analyser/screens/login_screen.dart';
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
        title: const Text("Sign Up", ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey, 
            child: Container(
              margin:  const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   const Text("Email ", textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.blue),),
                   TextFormField(
                   
                    controller: _signupEmailController,
                    decoration: const InputDecoration(
                      hintText: "someone@email.com",
                      hintStyle: TextStyle(color: Colors.grey)
                      
                    ),
                    validator: (value){  // validate use input
                      if (value == null || value.isEmpty){// check null or is empty
                        return "Email can not be empty";
                        }
                      if (!(value.contains("@") && value.contains("."))){ // chekc email validity
                          return "Enter valid email";
                        }
                        return null;
                      },
                   
                                       ),
                                       const SizedBox(height: 20),
        
                  const Text("Password", textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.blue),),
                  TextFormField(
                    controller: _signupPasswordController,
                    decoration: const InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.grey) 
                    ),
        
                    validator: (value){  // validate use input
                      if (value == null || value.isEmpty){// check null or is empty
                        return "Password can not be empty";
                        }
                      if (value.length <6 ){ // chekc email validity
                          return "Password should contanis minimum 6 characters";
                        }
                        return null;
                      },
        
                  ),
        
                 const SizedBox(height: 20),
        
                 const Text("Code number", textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.blue),),
                  TextFormField(
                    controller: _signupCodeController,
                    decoration: const InputDecoration(
                      hintText: "8 digit number",
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
        
                    validator: (value){  // validate use input
                      if (value == null || value.isEmpty){// check null or is empty
                        return "Code can not be empty";
                        }
                      if (value!="123##456"){ // chekc email validity
                          return "Invalid Code";
                        }
                        return null;
                      },
        
                  ),
        
                  const SizedBox(height: 20,),
                     
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                             
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          
                        ),
                        onPressed: (){authTest(_signupEmailController.text, _signupPasswordController.text);},
                        child: const Text("Sign Up", style: TextStyle(color: Colors.white,fontSize:15),),
                        ),
                   ],
                  ),
                  
                ],
              ),
            )
          )
        ),
      ),

    );
  }

void authTest(String email, String password ) async{

  try {
     if(_formKey.currentState!.validate()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      Navigator.of(context).push(MaterialPageRoute(builder:(_){ // move to chart choose screen
         return LoginFormScreen();
         }));
      _signupCodeController.clear();
      _signupEmailController.clear();
      _signupPasswordController.clear();

      

    }
  }on Exception catch (e){
    print(e);
    _showSnackbar(context,e.toString());
  }

 

  }

    void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3), // adjust the duration as needed
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
          },
        ),
      ),
    );



}
}






