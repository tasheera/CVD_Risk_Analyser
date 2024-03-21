import "package:flutter/material.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShowsScreen",
      home: ShowScreen(),
    );
  }
}

class ShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Paitent History"),
        ),
        body: Container(
          child: ListView(
            // this have to auto genarate
            scrollDirection: Axis.vertical, //scroll down
            children: <Widget>[
/**
 * this part have to be itarare
 * using colour,date and the display msg
 */

              ListTile(
                leading: Icon(Icons.ac_unit_rounded),
                title: Text("date  //calculate date"),
                subtitle: Text("//display msg"),
                trailing: Container(
                  width: 2,
                  height: 2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue // colouer which output
                      ),
                  //onTop(){}, --> something wanna happen
                ),
              )

              // Divider(),

              // ListTile(
              //   leading: Icon(Icons.ac_unit_rounded),
              //   title:Text("date  //calculate date"),
              //   subtitle:Text("//display msg"),
              //   trailing:Container(
              //     width: 2,
              //     height: 2,
              //     decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color:Colors.blue // colouer which output
              //   ),
              //   ),
              // )
            ],
          ),
        ));
  }
}
