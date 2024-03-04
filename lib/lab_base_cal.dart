import 'dart:io';

main() {
  //lab base chart

  var input_D = 1; // with diabets
  String input_G = " ."; // about gender
  String input_S = "."; // about smoke

  var inputA = 1; //for age
  var SBP = 1;
  var chole = 1;

  if (input_D > 125) {
    if (input_G == "men") {
      if (input_S == "smoke") {
        //box 1

        if ((40 <= inputA && inputA <= 44) && (6.9 >= chole) && (SBP < 120)) {
          return ("yellow");
        } else if ((40 <= inputA && inputA <= 44) &&
            (6.9 < chole) &&
            (SBP < 120)) {
          return ("oranage");
        } else if ((40 <= inputA && inputA <= 44) &&
            (5.9 >= chole) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("yellow");
        } else if ((40 <= inputA && inputA <= 44) &&
            (5.9 >= chole) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("yellow");
        } else if ((40 <= inputA && inputA <= 44) &&
            (5.9 < chole) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("orange");
        } else if ((40 <= inputA && inputA <= 44) &&
            (4 > chole) &&
            (140 <= SBP && SBP <= 159)) {
          return ("yellow");
        } else if ((40 <= inputA && inputA <= 44) &&
            (4 <= chole) &&
            (140 <= SBP && SBP <= 159)) {
          return ("orange");
        } else if ((40 <= inputA && inputA <= 44) &&
            (6.9 >= chole) &&
            (160 <= SBP && SBP <= 179)) {
          return ("orange");
        } else if ((40 <= inputA && inputA <= 44) &&
            (6.9 < chole) &&
            (160 <= SBP && SBP <= 179)) {
          return ("red");
        } else if ((40 <= inputA && inputA <= 44) &&
            (4.9 >= chole) &&
            (180 <= SBP)) {
          return ("orange");
        } else if ((40 <= inputA && inputA <= 44) &&
            (4.9 < chole && chole < 7) &&
            (180 <= SBP)) {
          return ("red");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 7) &&
            (180 <= SBP)) {
          return ("meroon");
        }
        //box 2
        else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 5.9) &&
            (120 > SBP)) {
          return ("yello");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 5.9) &&
            (120 > SBP)) {
          return ("orange");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole < 4) &&
            (120 <= SBP && SBP >= 139)) {
          return ("yellow");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole >= 4) &&
            (120 <= SBP && SBP >= 139)) {
          return ("orange");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 6.9) &&
            (140 <= SBP && SBP >= 159)) {
          return ("orange");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 6.9) &&
            (140 <= SBP && SBP >= 159)) {
          return ("red");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (160 <= SBP && SBP >= 179)) {
          return ("orange");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (160 <= SBP && SBP >= 179)) {
          return ("red");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 5.9) &&
            (180 <= SBP)) {
          return ("meron");
        }
        //box 3
        else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 4.9) &&
            (120 > SBP)) {
          return ("yellow");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9) &&
            (120 > SBP)) {
          return ("orange");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9 && chole <= 4.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("orange");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 5.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("orange");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 5.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("red");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole < 4) &&
            (160 <= SBP && SBP <= 179)) {
          return ("orange");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole >= 4 && chole <= 6.9) &&
            (160 <= SBP && SBP <= 179)) {
          return ("red");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 6.9) &&
            (160 <= SBP && SBP <= 179)) {
          return ("meroon");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 4.9) &&
            (180 <= SBP)) {
          return ("red");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9) &&
            (180 <= SBP)) {
          return ("meroon");
        }
        //box4
        else if ((55 <= inputA && inputA <= 59) &&
            (chole > 4.9 && chole <= 4.9) &&
            (120 > SBP)) {
          return ("orange");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 5.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("orange");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 5.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("red");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 4) &&
            (140 <= SBP && SBP <= 159)) {
          return ("orange");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 4 && chole <= 6.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("red");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 6.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("meron");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole <= 5.9) &&
            (160 <= SBP && SBP <= 179)) {
          return ("orange");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole > 5.9) &&
            (160 <= SBP && SBP <= 179)) {
          return ("M");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 4) &&
            (180 <= SBP)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 4) &&
            (180 <= SBP)) {
          return ("M");
        }
        //box 5
        else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 5.9) &&
            (120 > SBP)) {
          return ("O");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 5.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole < 4) &&
            (120 <= SBP && SBP <= 139)) {
          return ("O");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole >= 4) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 5.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 5.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole < 4) &&
            (160 <= SBP && SBP <= 179)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole >= 4) &&
            (160 <= SBP && SBP <= 179)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole >= 4 && chole < 4) &&
            (180 <= SBP)) {
          return ("M");
        } //box6

        else if ((65 <= inputA && inputA <= 69) && (chole < 4) && (120 > SBP)) {
          return ("O");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole >= 4) &&
            (120 > SBP)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole <= 5.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole < 5.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("M");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole < 4) &&
            (140 <= SBP && SBP <= 159)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole >= 4) &&
            (140 <= SBP && SBP <= 159)) {
          return ("M");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole >= 4 && chole < 4) &&
            (160 <= SBP)) {
          return ("M");
        }
        //box 7
        else if ((70 <= inputA && inputA <= 74) &&
            (chole <= 5.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole <= 5.9) &&
            (120 > SBP)) {
          return ("M");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole < 4) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole >= 4) &&
            (120 <= SBP && SBP <= 139)) {
          return ("M");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole >= 4 && chole < 4) &&
            (140 <= SBP)) {
          return ("M");
        }
      } else {
        //box 8
        if ((40 <= inputA && inputA <= 44) && (chole < 4) && (120 > SBP)) {
          return ("Y");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 4) &&
            (120 > SBP)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole <= 5.9) &&
            (120 <= SBP && 139 <= SBP)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 5.9) &&
            (120 <= SBP && 139 <= SBP)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole <= 4.9) &&
            (140 <= SBP && 159 <= SBP)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 4.9 && chole <= 6.9) &&
            (140 <= SBP && 159 <= SBP)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 6.9) &&
            (140 <= SBP && 159 <= SBP)) {
          return ("M");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 4.9) &&
            (160 <= SBP && 179 <= SBP)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 4.9) &&
            (160 <= SBP && 179 <= SBP)) {
          return ("M");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 4.9 && chole <= 4.9) &&
            (180 <= SBP)) {
          return ("M");
        }
        //box  9
        else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 6.9) &&
            (120 > SBP)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 6.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole < 4) &&
            (140 <= SBP && SBP <= 159)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole >= 4 && chole <= 5.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 5.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("M");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (160 <= SBP && SBP <= 179)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (160 <= SBP && SBP <= 179)) {
          return ("M");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9 && chole <= 4.9) &&
            (180 <= SBP)) {
          return ("M");
        }
        //box 10
        else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 5.9) &&
            (120 > SBP)) {
          return ("O");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 5.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole < 4) &&
            (120 <= SBP && SBP <= 139)) {
          return ("O");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole >= 4 && chole <= 6.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 6.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("M");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 4.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9) &&
            (140 <= SBP && SBP <= 159)) {
          return ("M");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole < 4) &&
            (160 <= SBP && SBP <= 179)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole >= 4) &&
            (160 <= SBP && SBP <= 179)) {
          return ("M");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole >= 4 && chole < 4) &&
            (180 <= SBP)) {
          return ("M");
        } //box 11
        else if ((55 <= inputA && inputA <= 59) &&
            (chole <= 4.9) &&
            (120 > SBP)) {
          return ("O");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole > 4.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole <= 5.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole > 5.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("M");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 4) &&
            (140 <= SBP && SBP <= 159)) {
          return ("M");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 4 && chole < 4) &&
            (160 <= SBP)) {
          return ("M");
        }
        //box 12
        else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 5.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 5.9) &&
            (120 > SBP)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 4.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 4.9) &&
            (120 <= SBP && SBP <= 139)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 4.9 && chole <= 4.9) &&
            (140 <= SBP)) {
          return ("M");
        }
        //box13
        else if ((65 <= inputA && inputA <= 69) &&
            (chole <= 4.9) &&
            (120 > SBP)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole > 4.9) &&
            (120 > SBP)) {
          return ("M");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole > 4.9 && chole <= 4.9) &&
            (120 <= SBP)) {
          return ("M");
        }
        //box 14
        else if ((70 <= inputA && inputA <= 74) &&
            (chole > 4.9 && chole <= 4.9) &&
            (120 <= SBP && SBP < 120)) {
          return ("M");
        }
      }
    } else {
      //box 15
      if (input_S == "smoke") {
        //women smoke
        if ((40 <= inputA && inputA <= 44) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP < 120)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole <= 5.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 5.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole < 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole <= 5.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 5.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("M");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole < 4) &&
            (SBP >= 180)) {
          return ("R");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 4) &&
            (SBP >= 180)) {
          return ("M");
        } //box 16
        else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 6.9) &&
            (SBP < 120)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 6.9) &&
            (SBP < 120)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 6.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole < 6.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("M");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("M");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 180)) {
          return ("M");
        }
        //box 17
        else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 5.9) &&
            (SBP < 120)) {
          return ("O");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 5.9) &&
            (SBP < 120)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 5.9 && chole <= 5.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 5.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 5.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("M");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 5.9 && chole <= 5.9) &&
            (SBP >= 160)) {
          return ("M");
        }
        //box 18
        else if ((55 <= inputA && inputA <= 59) && (chole < 4) && (SBP < 120)) {
          return ("O");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 4) &&
            (SBP < 120)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole <= 6.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole > 6.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("M");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("M");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole >= 4 && chole < 4) &&
            (SBP >= 160)) {
          return ("M");
        } //box19
        else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 6.9) &&
            (SBP < 120)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 6.9) &&
            (SBP < 120)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 140)) {
          return ("M");
        } //box20
        else if ((65 <= inputA && inputA <= 69) &&
            (chole <= 4.9) &&
            (SBP < 120)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole > 4.9) &&
            (SBP < 120)) {
          return ("M");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 120)) {
          return ("M");
        }
        //box21
        else if ((70 <= inputA && inputA <= 74) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP < 120 && SBP >= 120)) {
          return ("M");
        }
      } else {
        //non smoke -women
        if ((40 <= inputA && inputA <= 44) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP < 120)) {
          return ("Y");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole <= 6.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("Y");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 6.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole < 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("Y");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole < 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("Y");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 4) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole >= 4 && chole < 4) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole <= 6.9) &&
            (SBP >= 180)) {
          return ("O");
        } else if ((40 <= inputA && inputA <= 44) &&
            (chole > 6.9) &&
            (SBP >= 180)) {
          return ("R");
        } //box 23
        else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 6.9) &&
            (SBP < 120)) {
          return ("Y");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 6.9) &&
            (SBP < 120)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("Y");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 6.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 6.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("R");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole <= 4.9) &&
            (SBP >= 180)) {
          return ("O");
        } else if ((45 <= inputA && inputA <= 49) &&
            (chole > 4.9) &&
            (SBP >= 180)) {
          return ("R");
        } //box 24
        else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 4.9) &&
            (SBP < 120)) {
          return ("Y");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9) &&
            (SBP < 120)) {
          return ("O");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 120 && SBP <= 159)) {
          return ("O");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole <= 4.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("O");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("R");
        } else if ((50 <= inputA && inputA <= 54) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 180)) {
          return ("R");
        }
        //box 25
        else if ((55 <= inputA && inputA <= 59) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP <= 139)) {
          return ("O");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole <= 5.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("O");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 5.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole < 5.9 && chole >= 5.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole <= 5.9) &&
            (SBP >= 180)) {
          return ("R");
        } else if ((55 <= inputA && inputA <= 59) &&
            (chole > 5.9) &&
            (SBP >= 180)) {
          return ("M");
        } //box 26
        else if ((60 <= inputA && inputA <= 64) &&
            (chole > 5.9 && chole <= 5.9) &&
            (SBP < 120)) {
          return ("O");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("O");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole <= 5.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole > 5.9) &&
            (SBP >= 160 && SBP <= 179)) {
          return ("M");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole < 4) &&
            (SBP >= 180)) {
          return ("R");
        } else if ((60 <= inputA && inputA <= 64) &&
            (chole >= 4) &&
            (SBP >= 180)) {
          return ("M");
        }
        //box 27
        else if ((65 <= inputA && inputA <= 69) && (chole < 4) && (SBP < 120)) {
          return ("O");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole >= 4) &&
            (SBP < 120)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole >= 4 && chole < 4) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole <= 5.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("R");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole > 5.9) &&
            (SBP >= 140 && SBP <= 159)) {
          return ("M");
        } else if ((65 <= inputA && inputA <= 69) &&
            (chole > 5.9 && chole <= 5.9) &&
            (SBP >= 160)) {
          return ("M");
        } //last
        else if ((70 <= inputA && inputA <= 74) &&
            (chole > 5.9 && chole <= 5.9) &&
            (SBP < 120)) {
          return ("R");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole <= 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("R");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole > 4.9) &&
            (SBP >= 120 && SBP <= 139)) {
          return ("M");
        } else if ((70 <= inputA && inputA <= 74) &&
            (chole > 4.9 && chole <= 4.9) &&
            (SBP >= 140)) {
          return ("M");
        }
      }
    }
  } else {
    //without diabites

    if (input_G == "men") {
      if (input_S == "smoke") {
        if ((40 <= inputA && inputA <= 44) &&
            (chole <4) &&
            (SBP <120)) {
          return ("G");
        }
        else if ((40 <= inputA && inputA <= 44) &&
            (chole <4) &&
            (SBP <120)) {
          return ("Y");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole <=5.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole >5.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole<=4.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("Y");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole>4.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole<=6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole>6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole>=4.9) &&
            (SBP >=180)) {
          return ("O");
        }else if ((40 <= inputA && inputA <= 44) &&
            (chole<4.9) &&
            (SBP >=180)) {
          return ("R");
        }//box 9
        else if ((45 <= inputA && inputA <= 49) &&
            (chole<=5.9) &&
            (SBP <120)) {
          return ("Y");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole>5.9) &&
            (SBP <120)) {
          return ("O");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole<=4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole>4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole<=6.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole>6.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("R");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole<=5.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole>5.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole<4) &&
            (SBP >=180)) {
          return ("O");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole>=4 && chole<=6.9) &&
            (SBP >=180)) {
          return ("R");
        }else if ((45 <= inputA && inputA <= 49) &&
            (chole>6.9) &&
            (SBP >=180)) {
          return ("M");
        }//box 10
        else if ((50 <= inputA && inputA <= 54) &&
            (chole<=4.9) &&
            (SBP <120)) {
          return ("Y");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole>4.9) &&
            (SBP <120)) {
          return ("O");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole>4.9 && chole <=4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole <=5.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole >5.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("R");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole<=4.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole>4.9 && chole <=6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole >6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("M");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole <=5.9) &&
            (SBP >=180)) {
          return ("R");
        }else if ((50 <= inputA && inputA <= 54) &&
            (chole >5.9) &&
            (SBP >=180)) {
          return ("M");
        }//box 11
        else if ((55 <= inputA && inputA <= 59) &&
            (chole >5.9 && chole <=5.9) &&
            (SBP<120)) {
          return ("O");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole <=6.9) &&
            (SBP>=120 && SBP <=139)) {
          return ("O");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole >6.9) &&
            (SBP>=120 && SBP <=139)) {
          return ("R");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole <=4.9) &&
            (SBP>=140 && SBP <=159)) {
          return ("O");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole >4.9) &&
            (SBP>=140 && SBP <=159)) {
          return ("R");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole <=5.9) &&
            (SBP>=160 && SBP <=179)) {
          return ("R");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole >5.9) &&
            (SBP>=160 && SBP <=179)) {
          return ("M");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole<4) &&
            (SBP>=180)) {
          return ("R");
        }else if ((55 <= inputA && inputA <= 59) &&
            (chole>=4) &&
            (SBP>=180)) {
          return ("M");
        }//box 11
        else if ((60 <= inputA && inputA <=64) &&
            (chole<=6.9) &&
            (SBP<120)) {
          return ("O");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole>6.9) &&
            (SBP<120)) {
          return ("R");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole<=4.9) &&
            (SBP>=120 && SBP <=139)) {
          return ("O");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole>4.9) &&
            (SBP>=120 && SBP <=139)) {
          return ("R");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole<=6.9) &&
            (SBP>=140 && SBP <=159)) {
          return ("R");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole>6.9) &&
            (SBP>=140 && SBP <=159)) {
          return ("M");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole<=4.9) &&
            (SBP>=160 && SBP <=179)) {
          return ("R");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole>4.9) &&
            (SBP>=160 && SBP <=179)) {
          return ("M");
        }else if ((60 <= inputA && inputA <=64) &&
            (chole>4.9 && chole <=4.9) &&
            (SBP>=180)) {
          return ("M");
        }//box 12
        else if ((65 <= inputA && inputA <=69) &&
            (chole<=4.9) &&
            (SBP<120)) {
          return ("O");
        }else if ((65 <= inputA && inputA <=69) &&
            (chole>4.9) &&
            (SBP<120)) {
          return ("R");
        }else if ((65 <= inputA && inputA <=69) &&
            (chole<=6.9) &&
            (SBP>=120 && SBP <=139)) {
          return ("R");
        }else if ((65 <= inputA && inputA <=69) &&
            (chole>6.9) &&
            (SBP>=120 && SBP <=139)) {
          return ("M");
        }else if ((65 <= inputA && inputA <=69) &&
            (chole<=4.9) &&
            (SBP>=140 && SBP <=159)) {
          return ("R");
        }else if ((65 <= inputA && inputA <=69) &&
            (chole>4.9) &&
            (SBP>=140 && SBP <=159)) {
          return ("M");
        }else if ((65 <= inputA && inputA <=69) &&
            (chole>4.9 && chole <=4.9) &&
            (SBP>=160)) {
          return ("M");
        }//box 14
        else if ((70<= inputA && inputA <=74) &&
            (chole<=5.9) &&
            (SBP <120)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>5.9) &&
            (SBP <120)) {
          return ("M");
        }else if ((70<= inputA && inputA <=74) &&
            (chole<=4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("M");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>4.9 && chole<=4.9) &&
            (SBP >=140)) {
          return ("M");
        }

      } else {
        //nonsmoke to do
        if ((40<= inputA && inputA <=44) &&
            (chole<=6.9) &&
            (SBP <120)) {
          return ("G");
        }
        else if ((40<= inputA && inputA <=44) &&
            (chole>6.9) &&
            (SBP <120)) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<=5.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("G");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>5.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<4) &&
            (SBP >=140 && SBP <=159)) {
          return ("G");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>=4) &&
            (SBP >=140 && SBP <=159)) {
          return ("Y");
        }
        else if ((40<= inputA && inputA <=44) &&
            (chole<=6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<=4.9) &&
            (SBP >=180)) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>4.9) &&
            (SBP >=180)) {
          return ("O");
        }//box 2
        else if ((45<= inputA && inputA <=49) &&
            (chole<=5.9) &&
            (SBP <120)) {
          return ("G");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>5.9) &&
            (SBP <120)) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<4) &&
            (SBP >=120 && SBP <=139)) {
          return ("G");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>=4) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=6.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>6.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>4.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>4.9 && chole<=4.9) &&
            (SBP >=180)) {
          return ("O");
        }//box3
        else if ((50<= inputA && inputA <=54) &&
            (chole<4) &&
            (SBP <120)) {
          return ("G");
        }else if ((50<= inputA && inputA <=54) &&
            (chole>=4) &&
            (SBP <120)) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            (chole<=6.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            (chole>6.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole<=4.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            (chole>4.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole>4.9 && chole <=4.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole <=5.9) &&
            (SBP >=180)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole <5.9) &&
            (SBP >=180)) {
          return ("R");
        }//box 4
        else if ((55<= inputA && inputA <=59) &&
            (chole <=5.9) &&
            (SBP <120)) {
          return ("Y");
        }else if ((55<= inputA && inputA <=59) &&
            (chole >5.9) &&
            (SBP <120)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole<=4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((55<= inputA && inputA <=59) &&
            (chole>4.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole>4.9 && chole<=4.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole<=5.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole>5.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((55<= inputA && inputA <=59) &&
            (chole<4) &&
            (SBP >=180)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole>=4) &&
            (SBP >=180)) {
          return ("R");
        }//bpx 5
        else if ((60<= inputA && inputA <=64) &&
            (chole<4) &&
            (SBP <120)) {
          return ("Y");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>=4) &&
            (SBP <120)) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>=4 && chole <4) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole<=5.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>5.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole<4) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>=4) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole<=5.9) &&
            (SBP >=180 )) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>5.9) &&
            (SBP >=180 )) {
          return ("M");
        }//box 6
        else if ((65<= inputA && inputA <=69) &&
            (chole<=6.9) &&
            (SBP <120 )) {
          return ("O");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>6.9) &&
            (SBP <120 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<=5.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("O");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>5.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<4) &&
            (SBP >=140 && SBP <=159 )) {
          return ("O");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>=4) &&
            (SBP >=140 && SBP <=159 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<=5.9) &&
            (SBP >=160 && SBP <=179 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<5.9) &&
            (SBP >=160 && SBP <=179 )) {
          return ("M");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<4) &&
            (SBP >=180 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>=4) &&
            (SBP >=180 )) {
          return ("M");
        }//box 7
        else if ((70<= inputA && inputA <=74) &&
            (chole<=4.9) &&
            (SBP <120 )) {
          return ("O");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>4.9) &&
            (SBP <120 )) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole<=6.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>=6.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("M");
        }else if ((70<= inputA && inputA <=74) &&
            (chole<=4.9) &&
            (SBP >=140 && SBP <=159 )) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>4.9) &&
            (SBP >=140 && SBP <=159 )) {
          return ("M");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>4.9 && chole<=4.9) &&
            (SBP >=160)) {
          return ("M");
        }


      }
    } else {
      //femail
      if (input_S == "smoke") {
        if ((40<= inputA && inputA <=44) &&
            (chole>4.9 && chole<=4.9) &&
            (SBP <120)) {
          return ("Y");
        }
        else if ((40<= inputA && inputA <=44) &&
            (chole<=5.9 ) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>5.9 ) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<4 ) &&
            (SBP >=140 && SBP <=159)) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>=4 ) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>=4 && chole<4 ) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<=5.9 ) &&
            (SBP >=180)) {
          return ("O");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<5.9 ) &&
            (SBP >=180)) {
          return ("R");
        }//box15
        else if ((45<= inputA && inputA <=49) &&
            (chole<=6.9 ) &&
            (SBP <120)) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>6.9 ) &&
            (SBP <120)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4.9 ) &&
            (SBP >=120 && SBP <=139)) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4.9 ) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4.9 && chole>4.9 ) &&
            (SBP >=140 && SBP <=159)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=6.9 ) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>6.9 ) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4.9 ) &&
            (SBP >=180)) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>4.9 ) &&
            (SBP >=180)) {
          return ("R");
        }//box 16
        else if ((50<= inputA && inputA <=54) &&
            (chole<=4.9 ) &&
            (SBP <120)) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            (chole>4.9 ) &&
            (SBP <120)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole>4.9 && chole <=4.9 ) &&
            (SBP >=120 && SBP <=159)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole <=5.9 ) &&
            (SBP >=160 && SBP <=179)) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            (chole >5.9 ) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((50<= inputA && inputA <=54) &&
            (chole >5.9 && chole <=5.9 ) &&
            (SBP >=180)) {
          return ("R");
        }//box
        else if ((55<= inputA && inputA <=59) &&
            (chole >5.9 && chole <=5.9 ) &&
            (SBP <=139)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole <=5.9 ) &&
            (SBP <=140 && SBP <=159)) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole >5.9 ) &&
            (SBP <=140 && SBP <=159)) {
          return ("R");
        }else if ((55<= inputA && inputA <=59) &&
            (chole >5.9 && chole<=5.9 ) &&
            (SBP <=160 && SBP <=179)) {
          return ("R");
        }else if ((55<= inputA && inputA <=59) &&
            ( chole<=5.9 ) &&
            (SBP <=180)) {
          return ("R");
        }else if ((55<= inputA && inputA <=59) &&
            ( chole<5.9 ) &&
            (SBP <=180)) {
          return ("M");
        }//box19
        else if ((60<= inputA && inputA <=64) &&
            ( chole<=5.9 && chole>5.9 ) &&
            (SBP <120)) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            ( chole<=5.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            ( chole>5.9) &&
            (SBP >=120 && SBP <=139)) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            ( chole>5.9 && chole<=5.9) &&
            (SBP >=140 && SBP <=159)) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole<=6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("M");
        }else if ((60<= inputA && inputA <=64) &&
            (chole<4) &&
            (SBP >=180 )) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole<=4) &&
            (SBP >=180 )) {
          return ("M");
        }
        //box 20
        else if ((65<= inputA && inputA <=69) &&
            (chole<=4.9) &&
            (SBP <120 )) {
          return ("O");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>4.9) &&
            (SBP <120 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>4.9 && chole<=4.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<=6.9) &&
            (SBP >=140 && SBP <=159 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>6.9) &&
            (SBP >=140 && SBP <=159 )) {
          return ("M");
        }else if ((65<= inputA && inputA <=69) &&
            (chole<4) &&
            (SBP >=160 && SBP <=179 )) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>=4) &&
            (SBP >=160 && SBP <=179 )) {
          return ("M");
        }else if ((65<= inputA && inputA <=69) &&
            (chole>=4 && chole<4) &&
            (SBP >=180 )) {
          return ("M");
        }//box 21
        else if ((70<= inputA && inputA <=74) &&
            (chole>=4 && chole<4) &&
            (SBP <120 )) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole>=6.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            (chole<6.9) &&
            (SBP >=120 && SBP <=139 )) {
          return ("M");
        }else if ((70<= inputA && inputA <=74) &&
            (chole<6.9 && chole >=6.9) &&
            (SBP >=140)) {
          return ("M");
        }

      } else {
        //box22
        if ((40<= inputA && inputA <=44) &&
            (chole<=6.9 && chole>6.9) &&
            (SBP <120 )) {
          return ("G");
        }
        else if ((40<= inputA && inputA <=44) &&
            (chole<=6.9 ) &&
            (SBP >=120 && SBP<=139 )) {
          return ("G");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>6.9 ) &&
            (SBP >=120 && SBP<=139 )) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<=4.9 ) &&
            (SBP >=140 && SBP<=159 )) {
          return ("G");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>4.9 ) &&
            (SBP >=140 && SBP<=159 )) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>4.9 && chole<=4.9 ) &&
            (SBP >=160 && SBP<=179 )) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole<=6.9 ) &&
            (SBP >=180 )) {
          return ("Y");
        }else if ((40<= inputA && inputA <=44) &&
            (chole>6.9 ) &&
            (SBP >=180 )) {
          return ("O");
        }
        //box 23
        else if ((45<= inputA && inputA <=49) &&
            (chole<=6.9 ) &&
            (SBP <120 )) {
          return ("G");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>6.9 ) &&
            (SBP <120 )) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<4 ) &&
            (SBP >=120 && SBP <=139 )) {
          return ("G");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4 ) &&
            (SBP >=120 && SBP <=139 )) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=4 && chole >4 ) &&
            (SBP >=140 && SBP <=159 )) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<=6.9 ) &&
            (SBP >=160 && SBP <=179 )) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>6.9 ) &&
            (SBP >=160 && SBP <=179 )) {
          return ("O");
        }else if ((45<= inputA && inputA <=49) &&
            (chole<4 ) &&
            (SBP >=180 )) {
          return ("Y");
        }else if ((45<= inputA && inputA <=49) &&
            (chole>=4 ) &&
            (SBP >=180 )) {
          return ("O");
        }
        //box 24
        else if ((50<= inputA && inputA <=54) &&
            (chole<4 && chole >=4 ) &&
            (SBP <=139 )) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            ( chole <=6.9 ) &&
            (SBP >=140  && SBP <=159 )) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            ( chole >6.9 ) &&
            (SBP >=140  && SBP <=159 )) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            ( chole <4 ) &&
            (SBP >=160  && SBP <=179 )) {
          return ("Y");
        }else if ((50<= inputA && inputA <=54) &&
            ( chole >=4 ) &&
            (SBP >=160  && SBP <=179 )) {
          return ("O");
        }else if ((50<= inputA && inputA <=54) &&
            ( chole >=4 && chole<4 ) &&
            (SBP >=180 )) {
          return ("O");
        }
        //box 25
        else if ((55<= inputA && inputA <=59) &&
            ( chole >=4 && chole<4 ) &&
            (SBP <120 )) {
          return ("Y");
        }else if ((55<= inputA && inputA <=59) &&
            (chole<=5.9 ) &&
            (SBP >=120 && SBP <=139 )) {
          return ("Y");
        }else if ((55<= inputA && inputA <=59) &&
            (chole>5.9 ) &&
            (SBP >=120 && SBP <=139 )) {
          return ("O");
        }else if ((55<= inputA && inputA <=59) &&
            (chole>5.9 && chole<=5.9 ) &&
            (SBP >=140 )) {
          return ("O");
        }
        //box 26
        else if ((60<= inputA && inputA <=64) &&
            (chole<=4.9 ) &&
            (SBP <120 )) {
          return ("Y");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>4.9 ) &&
            (SBP <120 )) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>4.9 && chole <=4.9 ) &&
            (SBP >=120 && SBP<=159 )) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole <=6.9 ) &&
            (SBP >=160 && SBP<=179 )) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole >6.9 ) &&
            (SBP >=160 && SBP<=179 )) {
          return ("R");
        }else if ((60<= inputA && inputA <=64) &&
            (chole <4 ) &&
            (SBP >=180 )) {
          return ("O");
        }else if ((60<= inputA && inputA <=64) &&
            (chole>=4 ) &&
            (SBP >=180 )) {
          return ("R");
        }//box 27
        else if ((65<= inputA && inputA <=69) &&
            (chole>=4  && chole <4) &&
            (SBP <=139 )) {
          return ("O");
        }else if ((65<= inputA && inputA <=69) &&
            ( chole <=5.9) &&
            (SBP>=140  && SBP<=159)) {
          return ("O");
        }else if ((65<= inputA && inputA <=69) &&
            ( chole >5.9) &&
            (SBP >=140  && SBP<=159)) {
          return ("R");
        }else if ((65<= inputA && inputA <=69) &&
            ( chole >5.9 && chole <=5.9) &&
            (SBP >=160)) {
          return ("R");
        }//last
        else if ((70<= inputA && inputA <=74) &&
            ( chole <=6.9) &&
            (SBP <120)) {
          return ("O");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole >6.9) &&
            (SBP <120)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole <4) &&
            (SBP >=120 && SBP <=139)) {
          return ("O");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole>=4) &&
            (SBP >=120 && SBP <=139)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole>=4 && chole <4) &&
            (SBP >=140 && SBP <=159)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole <=6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole >6.9) &&
            (SBP >=160 && SBP <=179)) {
          return ("M");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole <4) &&
            (SBP >=180)) {
          return ("R");
        }else if ((70<= inputA && inputA <=74) &&
            ( chole >=4) &&
            (SBP >=180)) {
          return ("M");
        }


      }
    }
  }
}
