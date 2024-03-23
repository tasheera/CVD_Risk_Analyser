import 'package:cvd_risk_analyser/screens/chart_choose_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FoamScreen extends StatefulWidget {
  const FoamScreen({super.key});

  @override
  State<FoamScreen> createState() => _FoamScreenState();
}

class _FoamScreenState extends State<FoamScreen> {

  final GlobalKey <FormState> _formKey =GlobalKey();

    final TextEditingController _signInpEmailController = TextEditingController(); 
  final TextEditingController _signInPasswordController = TextEditingController();
    final TextEditingController _signInNameController = TextEditingController(); 
 



  String _name="";

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: Text("Log-In "),
      ),
      body: SingleChildScrollView(
        child: Form(
          //get the validation
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                //can add many items

                _buildNameField(),
                _buildUserNameField(),
                _buildPasswordField(),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    ),
                    onPressed: (){
                      loginTest(_signInpEmailController.text,_signInPasswordController.text, _signInNameController.text);
                      
                      },
                    child: const Text("Login", style: TextStyle(color: Colors.white,fontSize:15),),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildNameField() {
    // name
    return TextFormField(
        //making the text field
        maxLength: 25, // maximum charaters
        controller: _signInNameController,
        decoration: InputDecoration(hintText: "Enter the Name"),
        validator: (text) {
          if (text == null) {
            return "Name cannot be emplty";
          }
          return null;
        },
        onSaved: (text) {
          _name = text!; //save items to that variable
        });
  }

  Widget _buildUserNameField() {
    //username
    return TextFormField(
        //making the text field
        maxLength: 25, // maximum charaters
        controller: _signInpEmailController,
        decoration: InputDecoration(hintText: "Enter the email address"),
        validator: (text) {
          if (text == null) {
            return "username cannot be emplty";
          }
          return null;
        },
        onSaved: (text) {
          _name = text!; //save items to that variable
        });
  }

  Widget _buildPasswordField() {
    // password
    return TextFormField(
        //making the text field
        maxLength: 25, // maximum charaters
        controller: _signInPasswordController,
        decoration: InputDecoration(hintText: "Enter the Password"),
        validator: (text) {
          if (text == null) {
            return "password cannot be emplty";
          }
          return null;
        },
        onSaved: (text) {
         _name = text!; //save items to that variable
        });
  }

  void loginTest(String email, String password, String name) async{
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder:(_){
        return ChartChoose(name:name,);
      }));
    }).onError((error, stackTrace)  {
      _showSnackbar(context, error.toString());
    });
  }

      void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3), // Adjust the duration as needed
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
          },
        ),
      ),
    );



}
}