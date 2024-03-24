//Dilhara : This page is removed and moved to screens/login_screen.dart


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Foam Widget",
//       home: FoamScreen(),
//     );
//   }
// }
//
// class FoamScreen extends StatefulWidget {
//   const FoamScreen({super.key});
//
//   @override
//   State<FoamScreen> createState() => _FoamScreenState();
// }
//
// class _FoamScreenState extends State<FoamScreen> {
//
//   final GlobalKey <FormState> _formKey =GlobalKey();
//
//   String _name="";
//
//   @override
//   Widget build(BuildContext context) {
//  return Scaffold(
//       appBar: AppBar(
//         title: Text("Log-In "),
//       ),
//       body: SingleChildScrollView(
//         child: Form(
//           //get the validation
//           key: _formKey,
//           child: Container(
//             margin: const EdgeInsets.all(24.0),
//             child: Column(
//               children: <Widget>[
//                 //can add many items
//                 _buildNameField(),
//                 _buildUserNameField(),
//                 _buildPasswordField(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _buildNameField() {
//     // name
//     return TextFormField(
//         //making the text field
//         maxLength: 25, // maximum charaters
//         decoration: InputDecoration(hintText: "Enter the Name"),
//         validator: (text) {
//           if (text == null) {
//             return "Name cannot be emplty";
//           }
//           return null;
//         },
//         onSaved: (text) {
//           _name = text!; //save items to that variable
//         });
//   }
//
//   Widget _buildUserNameField() {
//     //username
//     return TextFormField(
//         //making the text field
//         maxLength: 25, // maximum charaters
//         decoration: InputDecoration(hintText: "Enter the User Name"),
//         validator: (text) {
//           if (text == null) {
//             return "username cannot be emplty";
//           }
//           return null;
//         },
//         onSaved: (text) {
//           _name = text!; //save items to that variable
//         });
//   }
//
//   Widget _buildPasswordField() {
//     // password
//     return TextFormField(
//         //making the text field
//         maxLength: 25, // maximum charaters
//         decoration: InputDecoration(hintText: "Enter the Password"),
//         validator: (text) {
//           if (text == null) {
//             return "password cannot be emplty";
//           }
//           return null;
//         },
//         onSaved: (text) {
//          _name = text!; //save items to that variable
//         });
//   }
// }