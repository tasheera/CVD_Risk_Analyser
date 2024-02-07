import 'dart:io';

main() {
  //lab base chart

  //get weight
  var inputw = 1;
  var inputh = 1;
  var BMI = inputw / (inputh * inputh);

  //input1=men or female
  String input1 = "."; //getting frountend
  String input2 = "."; //for smoke or not
  var inputA = 1; //for age
  var SBP = 1;

  if (input1 == "men") {
    if (input2 == "Smoke") {
    } else {
      //nonsmoke

      //box 1
      if ((40 >= inputA && inputA <= 44) &&
          (20 <= BMI && BMI <= 35) &&
          (120 <= SBP && SBP >= 159)) {
        print("green risk level");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 <= BMI && BMI >= 35) &&
          (160 <= SBP && SBP >= 179)) {
        print("yello");
      } else if ((40 >= inputA && inputA <= 44) &&
          (20 <= BMI && BMI <= 35) &&
          (SBP >= 180)) {
        print("yello");
      } else if ((40 >= inputA && inputA <= 44) &&
          (BMI >= 35) &&
          (SBP >= 180)) {
        print("orange");
      }

      //box 2

      else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI >= 35) &&
          (139 < SBP && SBP > 120)) {
        print("green");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI <= 29) &&
          (140 < SBP && SBP <= 159)) {
        print("green");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 >= BMI && BMI <= 35) &&
          (160 < SBP && SBP <= 179)) {
        print("green");
      }
    }
  } else {}
}
