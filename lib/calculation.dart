import 'dart:io';

main() {
  //non-lab base chart

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
      //smoke

      //box 8

      if ((40 >= inputA && inputA <= 44) && (35 >= BMI) && (120 > SBP)) {
        return ("green risk level");
      } else if ((40 >= inputA && inputA <= 44) &&
          (24 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("green risk level");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 <= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("yellow");
      } else if ((40 >= inputA && inputA <= 44) && (35 <= BMI) && (120 > SBP)) {
        return ("yellow");
      } else if ((40 >= inputA && inputA <= 44) &&
          (35 > BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("yellow");
      } else if ((40 >= inputA && inputA <= 44) &&
          (24 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("yellow");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((40 >= inputA && inputA <= 44) &&
          (35 <= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((40 >= inputA && inputA <= 44) && (35 > BMI) && (SBP >= 180)) {
        return ("orange");
      } else if ((40 >= inputA && inputA <= 44) &&
          (35 <= BMI) &&
          (SBP >= 180)) {
        return ("red");
      }
      //box 9
      else if ((45 >= inputA && inputA <= 49) && (29 >= BMI) && (120 > SBP)) {
        return ("green risk level");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (120 <= SBP && SBP >= 139)) {
        return ("green ");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (120 <= SBP && SBP >= 139)) {
        return ("yello");
      } else if ((45 >= inputA && inputA <= 49) && (30 <= BMI) && (120 > SBP)) {
        return ("yello");
      } else if ((45 >= inputA && inputA <= 49) &&
          (29 >= BMI) &&
          (140 <= SBP && SBP >= 159)) {
        return ("yello");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (160 <= SBP && SBP >= 179)) {
        return ("yello");
      } else if ((45 >= inputA && inputA <= 49) &&
          (30 <= BMI) &&
          (140 <= SBP && SBP >= 159)) {
        return ("orange");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (160 <= SBP && SBP >= 179)) {
        return ("orange");
      } else if ((45 >= inputA && inputA <= 49) &&
          (29 <= BMI) &&
          (180 <= SBP)) {
        return ("orange");
      } else if ((45 >= inputA && inputA <= 49) &&
          (30 <= BMI) &&
          (180 <= SBP)) {
        return ("red");
      }

      //box10

      else if ((50 >= inputA && inputA <= 54) && (20 > BMI) && (120 > SBP)) {
        return ("green");
      } else if ((50 >= inputA && inputA <= 54) && (20 <= BMI) && (120 > SBP)) {
        return ("yellow");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 > BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("yellow");
      } else if ((50 >= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("yellow");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 <= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((50 >= inputA && inputA <= 54) &&
          (25 <= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 > BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("red");
      } else if ((50 >= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (SBP >= 180)) {
        return ("orange");
      } else if ((50 >= inputA && inputA <= 54) && (24 < BMI) && (SBP >= 180)) {
        return ("red");
      }

      //box 11

      else if ((55 >= inputA && inputA <= 59) && (35 > BMI) && (SBP < 120)) {
        return ("yellw");
      } else if ((55 >= inputA && inputA <= 59) && (35 <= BMI) && (SBP < 120)) {
        return ("orange");
      } else if ((55 >= inputA && inputA <= 59) &&
          (24 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("yellw");
      } else if ((55 >= inputA && inputA <= 59) &&
          (24 < BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((55 >= inputA && inputA <= 59) &&
          (24 < BMI && 24 >= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((55 >= inputA && inputA <= 59) &&
          (29 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((55 >= inputA && inputA <= 59) &&
          (29 < BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("red");
      } else if ((55 >= inputA && inputA <= 59) && (20 > BMI) && (180 >= SBP)) {
        return ("red");
      } else if ((55 >= inputA && inputA <= 59) &&
          (20 <= BMI && BMI < 35) &&
          (180 >= SBP)) {
        return ("red");
      } else if ((55 >= inputA && inputA <= 59) &&
          (BMI >= 35) &&
          (180 >= SBP)) {
        return ("BROWN");
      }

      //box12

      else if ((60 >= inputA && inputA <= 64) && (BMI <= 24) && (120 < SBP)) {
        return ("yellow");
      } else if ((60 >= inputA && inputA <= 64) && (BMI > 24) && (120 < SBP)) {
        return ("orange");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI > 24 && BMI <= 24) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI < 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI >= 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("red");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI < 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI >= 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("red");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI <= 29) &&
          (180 <= SBP)) {
        return ("red");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI >= 29) &&
          (180 <= SBP)) {
        return ("brown");
      }
      //box 13

      else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 29 && BMI < 29) &&
          (120 > SBP)) {
        return ("orange");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI < 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("red");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI <= 24) &&
          (140 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 25) &&
          (140 <= SBP && SBP <= 159)) {
        return ("red");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI < 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("red");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("brown");
      } else if ((65 >= inputA && inputA <= 69) && (BMI < 20) && (180 <= SBP)) {
        return ("red");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 20) &&
          (180 <= SBP)) {
        return ("browan");
      } //box 14
      else if ((70 >= inputA && inputA <= 74) && (BMI < 35) && (120 > SBP)) {
        return ("orange");
      } else if ((70 >= inputA && inputA <= 74) && (BMI >= 35) && (120 > SBP)) {
        return ("red");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI < 20) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 20) &&
          (120 <= SBP && SBP <= 139)) {
        return ("red");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI < 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("red");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("brown");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI < 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("red");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("brown");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 20) &&
          (180 <= SBP)) {
        return ("brown");
      } else if ((70 >= inputA && inputA <= 74) && (BMI < 20) && (180 <= SBP)) {
        return ("brown");
      }
    } else {
      //nonsmoke

      //box 1
      if ((40 >= inputA && inputA <= 44) &&
          (20 >= BMI && BMI > 20) &&
          (SBP <= 159)) {
        return ("green risk level");
      } else if ((40 >= inputA && inputA <= 44) &&
          (20 >= BMI && BMI <= 24) &&
          (160 <= SBP && SBP >= 179)) {
        return ("green");
      } else if ((40 >= inputA && inputA <= 44) &&
          (20 >= BMI && BMI <= 35) &&
          (SBP >= 180)) {
        return ("yello");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 >= BMI && BMI >= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("yello");
      } else if ((40 >= inputA && inputA <= 44) &&
          (BMI >= 35) &&
          (SBP >= 180)) {
        return ("orange");
      }

      //box 2

      else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI < 20) &&
          (139 < SBP && SBP > 120)) {
        return ("green");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI <= 29) &&
          (140 < SBP && SBP <= 159)) {
        return ("green");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 >= BMI && BMI > 20) &&
          (160 < SBP && SBP <= 179)) {
        return ("yellow");
      } else if ((45 <= inputA && inputA <= 49) &&
          (30 <= BMI && BMI >= 35) &&
          (140 < SBP && SBP <= 159)) {
        return ("yellow");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI >= 29) &&
          (SBP <= 159)) {
        return ("yellow");
      } else if ((45 <= inputA && inputA <= 49) &&
          (30 <= BMI && BMI <= 35) &&
          (SBP >= 180)) {
        return ("orange");
      }
      //box 3

      else if ((50 <= inputA && inputA <= 54) &&
          (20 >= BMI && BMI <= 29) &&
          (120 <= SBP && SBP <= 139)) {
        return ("green");
      } else if ((50 <= inputA && inputA <= 54) &&
          (30 <= BMI && BMI >= 35) &&
          (SBP <= 120)) {
        return ("green");
      } else if ((50 <= inputA && inputA <= 54) &&
          (30 <= BMI && BMI >= 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("yello");
      } else if ((50 <= inputA && inputA <= 54) &&
          (20 >= BMI && BMI >= 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("yello");
      } else if ((50 <= inputA && inputA <= 54) &&
          (20 >= BMI && BMI <= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("yello");
      } else if ((50 <= inputA && inputA <= 54) && (20 > BMI) && (180 <= SBP)) {
        return ("yello");
      } else if ((50 <= inputA && inputA <= 54) &&
          (BMI >= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Orange");
      } else if ((50 <= inputA && inputA <= 54) &&
          (20 <= BMI && BMI >= 35) &&
          (180 <= SBP)) {
        return ("orange");
      }

//box 4
      else if ((55 <= inputA && inputA <= 59) &&
          (20 >= BMI && BMI <= 29) &&
          (120 > SBP)) {
        return ("green");
      } else if ((55 <= inputA && inputA <= 59) &&
          (30 <= BMI && BMI >= 35) &&
          (120 > SBP)) {
        return ("Yelloww");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 >= BMI && BMI > 20) &&
          (120 <= SBP && SBP <= 179)) {
        return ("Yelloww");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI >= 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Yelloww");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI < 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Yelloww");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI >= 20) &&
          (160 <= SBP)) {
        return ("orange");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI > 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Yelloww");
      } else if ((55 <= inputA && inputA <= 59) && (BMI < 20) && (SBP >= 180)) {
        return ("Yelloww");
      }

//box5

      else if ((60 <= inputA && inputA <= 64) &&
          (20 <= BMI && BMI < 20) &&
          (SBP <= 139)) {
        return ("yellow");
      } else if ((60 <= inputA && inputA <= 64) && (BMI >= 35) && (SBP < 120)) {
        return ("yellow");
      } else if ((60 <= inputA && inputA <= 64) &&
          (BMI < 20) &&
          (SBP <= 140 && SBP <= 159)) {
        return ("yellow");
      } else if ((60 <= inputA && inputA <= 64) &&
          (20 <= BMI) &&
          (140 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) &&
          (35 <= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) && (20 > BMI) && (160 <= SBP)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) &&
          (20 <= BMI && BMI <= 29) &&
          (160 <= SBP)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) &&
          (30 <= BMI) &&
          (180 <= SBP)) {
        return ("Red");
      }

      //box6

      else if ((65 <= inputA && inputA <= 69) && (29 >= BMI) && (120 > SBP)) {
        return ("Yellow");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 >= BMI && BMI > 35) &&
          (120 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((65 <= inputA && inputA <= 69) && (30 <= BMI) && (120 > SBP)) {
        return ("orange");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((65 <= inputA && inputA <= 69) &&
          (30 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Red");
      } else if ((65 <= inputA && inputA <= 69) &&
          (30 <= BMI && BMI < 30) &&
          (180 <= SBP)) {
        return ("Red");
      }

      //box 7
      else if ((70 <= inputA && inputA <= 74) &&
          (29 >= BMI && BMI > 29) &&
          (139 <= SBP)) {
        return ("orange");
      } else if ((70 <= inputA && inputA <= 74) &&
          (24 >= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((70 <= inputA && inputA <= 74) &&
          (25 <= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Red");
      } else if ((70 <= inputA && inputA <= 74) &&
          (25 <= BMI && BMI < 25) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Red");
      } else if ((70 <= inputA && inputA <= 74) &&
          (24 >= BMI) &&
          (180 <= SBP)) {
        return ("Red");
      } else if ((70 <= inputA && inputA <= 74) &&
          (25 <= BMI) &&
          (180 <= SBP)) {
        return ("BROWn");
      }
    } //women
  } else {
    if (input2 == "Smoke") {
      //smoke
      //box22
      if ((40 <= inputA && inputA <= 44) &&
          (29 >= BMI && 29 < BMI) &&
          (120 > SBP)) {
        return ("green");
      } else if ((40 <= inputA && inputA <= 44) &&
          (29 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("green");
      } else if ((40 <= inputA && inputA <= 44) &&
          (29 < BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("yello");
      } else if ((40 <= inputA && inputA <= 44) &&
          (29 >= BMI && 29 < BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Yellow");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 > BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Yellow");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("brown");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI && BMI < 35) &&
          (180 <= SBP)) {
        return ("brown");
      } //box 23
      else if ((45 <= inputA && inputA <= 49) && (35 < BMI) && (120 < SBP)) {
        return ("green");
      } else if ((45 <= inputA && inputA <= 49) && (35 <= BMI) && (120 < SBP)) {
        return ("yello");
      } else if ((45 <= inputA && inputA <= 49) &&
          (35 <= BMI && BMI < 35) &&
          (120 <= SBP && SBP <= 159)) {
        return ("yello");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("yello");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && 20 > BMI) &&
          (180 <= SBP)) {
        return ("orange");
      }
      //box24
      else if ((50 <= inputA && inputA <= 54) &&
          (20 <= BMI && 20 > BMI) &&
          (139 >= SBP)) {
        return ("yello");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("yellow");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("orange");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI && 24 >= BMI) &&
          (160 <= SBP)) {
        return ("orange");
      }
      //box25
      else if ((55 <= inputA && inputA <= 59) &&
          (24 < BMI && 24 >= BMI) &&
          (120 < SBP)) {
        return ("yello");
      } else if ((55 <= inputA && inputA <= 59) &&
          (29 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("yello");
      } else if ((55 <= inputA && inputA <= 59) &&
          (29 < BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("orange");
      } else if ((55 <= inputA && inputA <= 59) &&
          (29 < BMI && 29 >= BMI) &&
          (140 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((55 <= inputA && inputA <= 59) &&
          (24 >= BMI) &&
          (180 <= SBP)) {
        return ("orange");
      } else if ((55 <= inputA && inputA <= 59) && (24 < BMI) && (180 <= SBP)) {
        return ("red");
      }
//box 26
      else if ((60 <= inputA && inputA <= 64) && (29 >= BMI) && (120 > SBP)) {
        return ("yello");
      } else if ((60 <= inputA && inputA <= 64) && (29 < BMI) && (120 > SBP)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 < BMI && 29 >= BMI) &&
          (120 <= SBP && SBP <= 159)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("orange");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 < BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("red");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 < BMI && 29 >= BMI) &&
          (180 <= SBP)) {
        return ("red");
      }
      //box 27
      else if ((65 <= inputA && inputA <= 69) &&
          (29 < BMI && 29 >= BMI) &&
          (139 <= SBP)) {
        return ("orange");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 > BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("orange");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 <= BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("red");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 <= BMI && 35 > BMI) &&
          (160 <= SBP && 179 >= SBP)) {
        return ("red");
      } else if ((65 <= inputA && inputA <= 69) && (35 > BMI) && (180 <= SBP)) {
        return ("red");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 <= BMI) &&
          (180 <= SBP)) {
        return ("brown");
      }
      //box 28
      else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (120 > SBP)) {
        return ("orange");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 > BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("orange");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("red");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (140 <= SBP && 179 >= SBP)) {
        return ("red");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (180 <= SBP)) {
        return ("brown");
      }
    } else {
      //nonsmoke
      //box 15
      if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI && 35 > BMI) &&
          (179 >= BMI)) {
        return ("green");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI && 35 > BMI) &&
          (180 <= SBP)) {
        return ("yello");
      }

      //box 16
      else if ((45 <= inputA && inputA <= 49) &&
          (35 <= BMI && 35 > BMI) &&
          (159 >= SBP)) {
        return ("green");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (160 <= SBP && 179 > SBP)) {
        return ("green");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (160 <= SBP && 179 > SBP)) {
        return ("YELLOW");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && 20 > BMI) &&
          (180 <= SBP)) {
        return ("YELLOW");
      }
      //BOX 17
      else if ((50 <= inputA && inputA <= 54) &&
          (20 <= BMI && 20 > BMI) &&
          (139 >= SBP)) {
        return ("GREEN");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("GREEN");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("YELLO");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI && 24 >= BMI) &&
          (160 <= SBP)) {
        return ("YELLO");
      }
      //BOX 18
      else if ((55 <= inputA && inputA <= 59) &&
          (24 < BMI && 24 >= BMI) &&
          (120 > SBP)) {
        return ("green");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 > BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("green");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 <= BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("yellow");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 > BMI && 20 <= BMI) &&
          (140 <= SBP && 179 >= SBP)) {
        return ("yellow");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 > BMI && 20 <= BMI) &&
          (180 <= SBP)) {
        return ("orange");
      }

      //box 19
      else if ((60 <= inputA && inputA <= 64) &&
          (20 > BMI && 20 <= BMI) &&
          (159 >= SBP)) {
        return ("yellow");
      } else if ((60 <= inputA && inputA <= 64) &&
          (20 > BMI && 20 <= BMI) &&
          (160 <= SBP)) {
        return ("orange");
      }

      //box 20

      else if ((65 <= inputA && inputA <= 69) &&
          (20 > BMI && 20 <= BMI) &&
          (120 > SBP)) {
        return ("yellow");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 >= BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("yellow");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 < BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("orange");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 < BMI && 29 >= BMI) &&
          (140 <= SBP)) {
        return ("orange");
      }
      //box 21
      else if ((70 <= inputA && inputA <= 74) &&
          (29 < BMI && 29 >= BMI) &&
          (159 >= SBP)) {
        return ("orange");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 > BMI) &&
          (SBP >= 160 && 179 >= SBP)) {
        return ("orange");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI) &&
          (SBP >= 160 && 179 >= SBP)) {
        return ("red");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (SBP >= 180)) {
        return ("red");
      }
    }
  }
}
