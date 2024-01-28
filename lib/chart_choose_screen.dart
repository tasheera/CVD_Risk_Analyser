import 'package:flutter/material.dart';

class ChartChoose extends StatelessWidget {
  const ChartChoose({super.key});

  @override
  Widget build(BuildContext context) {// return scaffold
    return Scaffold( 
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/chartChoose.png",fit: BoxFit.cover,),// Background Image
         

          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                          
              Container(
                width: 280,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey.withOpacity(0.5)),
                    child: const Text("Choose a chart",style: TextStyle(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w800),),
                    ),
        
              const SizedBox(// give extra space between widget
                height: 20,
              ),

              GestureDetector(
                onTap: (){},
                child: const ChartChooseButton(name: "Laboratory chart")// create object from class ChartChooseButton for choose chart
                ),
                
              const SizedBox( // give extra space between widget
                height: 20,
              ),

              GestureDetector(
                onTap: (){},
                child: const ChartChooseButton(name: "Non Laboratory chart")// create object from class ChartChooseButton for choose chart
                ),
           
            ],
          ),
        ),
        ],

      )
        
    );
  }
}


// class for chart choosen button
class ChartChooseButton extends StatelessWidget {
  final String name;
  const ChartChooseButton({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(20), // padding for all angles
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
      child: Center(child: Text(name,style: const TextStyle(color: Colors.white,fontSize: 24),)),
    );
  }
}