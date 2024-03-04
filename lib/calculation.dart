
String calculation(String age, String gender, String height, String weight, String SBPP, String smoke){
  //Non lab base chart

  //get weight
  var inputw = double.parse(weight);
  var inputh = (double.parse(height))/100;
  var BMI = inputw / (inputh * inputh);

  //input1=men or female
  String input1 = gender=="male"? "men": "no"; //getting frountend
  String input2 = smoke =="yes"? "Smoke": "no"; //for smoke or not
  var inputA = int.parse(age); //for age
  var SBP = double.parse(SBPP);

  if (input1 == "men") {
    if (input2 == "Smoke") {
      //smoke

      //box 8

      if ((40 >= inputA && inputA <= 44) && (35 >= BMI) && (120 > SBP)) {
        return ("G");
      } else if ((40 >= inputA && inputA <= 44) &&
          (24 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("G");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 <= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((40 >= inputA && inputA <= 44) && (35 <= BMI) && (120 > SBP)) {
        return ("Y");
      } else if ((40 >= inputA && inputA <= 44) &&
          (35 > BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Y");
      } else if ((40 >= inputA && inputA <= 44) &&
          (24 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((40 >= inputA && inputA <= 44) &&
          (35 <= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((40 >= inputA && inputA <= 44) && (35 > BMI) && (SBP >= 180)) {
        return ("O");
      } else if ((40 >= inputA && inputA <= 44) &&
          (35 <= BMI) &&
          (SBP >= 180)) {
        return ("R");
      }
      //box 9
      else if ((45 >= inputA && inputA <= 49) && (29 >= BMI) && (120 > SBP)) {
        return ("G");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (120 <= SBP && SBP >= 139)) {
        return ("G");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (120 <= SBP && SBP >= 139)) {
        return ("Y");
      } else if ((45 >= inputA && inputA <= 49) && (30 <= BMI) && (120 > SBP)) {
        return ("Y");
      } else if ((45 >= inputA && inputA <= 49) &&
          (29 >= BMI) &&
          (140 <= SBP && SBP >= 159)) {
        return ("Y");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (160 <= SBP && SBP >= 179)) {
        return ("Y");
      } else if ((45 >= inputA && inputA <= 49) &&
          (30 <= BMI) &&
          (140 <= SBP && SBP >= 159)) {
        return ("O");
      } else if ((45 >= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (160 <= SBP && SBP >= 179)) {
        return ("O");
      } else if ((45 >= inputA && inputA <= 49) &&
          (29 <= BMI) &&
          (180 <= SBP)) {
        return ("O");
      } else if ((45 >= inputA && inputA <= 49) &&
          (30 <= BMI) &&
          (180 <= SBP)) {
        return ("R");
      }

      //box10

      else if ((50 >= inputA && inputA <= 54) && (20 > BMI) && (120 > SBP)) {
        return ("G");
      } else if ((50 >= inputA && inputA <= 54) && (20 <= BMI) && (120 > SBP)) {
        return ("Y");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 > BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((50 >= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Y");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 <= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("O");
      } else if ((50 >= inputA && inputA <= 54) &&
          (25 <= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 > BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((50 >= inputA && inputA <= 54) &&
          (35 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((50 >= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (SBP >= 180)) {
        return ("O");
      } else if ((50 >= inputA && inputA <= 54) && (24 < BMI) && (SBP >= 180)) {
        return ("R");
      }

      //box 11

      else if ((55 >= inputA && inputA <= 59) && (35 > BMI) && (SBP < 120)) {
        return ("Y");
      } else if ((55 >= inputA && inputA <= 59) && (35 <= BMI) && (SBP < 120)) {
        return ("O");
      } else if ((55 >= inputA && inputA <= 59) &&
          (24 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((55 >= inputA && inputA <= 59) &&
          (24 < BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("O");
      } else if ((55 >= inputA && inputA <= 59) &&
          (24 < BMI && 24 >= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((55 >= inputA && inputA <= 59) &&
          (29 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((55 >= inputA && inputA <= 59) &&
          (29 < BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((55 >= inputA && inputA <= 59) && (20 > BMI) && (180 >= SBP)) {
        return ("R");
      } else if ((55 >= inputA && inputA <= 59) &&
          (20 <= BMI && BMI < 35) &&
          (180 >= SBP)) {
        return ("R");
      } else if ((55 >= inputA && inputA <= 59) &&
          (BMI >= 35) &&
          (180 >= SBP)) {
        return ("M");
      }

      //box12

      else if ((60 >= inputA && inputA <= 64) && (BMI <= 24) && (120 < SBP)) {
        return ("Y");
      } else if ((60 >= inputA && inputA <= 64) && (BMI > 24) && (120 < SBP)) {
        return ("O");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI > 24 && BMI <= 24) &&
          (120 <= SBP && SBP <= 139)) {
        return ("O");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI < 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI >= 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("R");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI < 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI >= 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI <= 29) &&
          (180 <= SBP)) {
        return ("R");
      } else if ((60 >= inputA && inputA <= 64) &&
          (BMI >= 29) &&
          (180 <= SBP)) {
        return ("M");
      }
      //box 13

      else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 29 && BMI < 29) &&
          (120 > SBP)) {
        return ("O");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI < 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("O");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("R");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI <= 24) &&
          (140 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 25) &&
          (140 <= SBP && SBP <= 159)) {
        return ("R");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI < 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("M");
      } else if ((65 >= inputA && inputA <= 69) && (BMI < 20) && (180 <= SBP)) {
        return ("R");
      } else if ((65 >= inputA && inputA <= 69) &&
          (BMI >= 20) &&
          (180 <= SBP)) {
        return ("M");
      } //box 14
      else if ((70 >= inputA && inputA <= 74) && (BMI < 35) && (120 > SBP)) {
        return ("O");
      } else if ((70 >= inputA && inputA <= 74) && (BMI >= 35) && (120 > SBP)) {
        return ("R");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI < 20) &&
          (120 <= SBP && SBP <= 139)) {
        return ("O");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 20) &&
          (120 <= SBP && SBP <= 139)) {
        return ("R");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI < 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("R");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("M");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI < 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("M");
      } else if ((70 >= inputA && inputA <= 74) &&
          (BMI >= 20) &&
          (180 <= SBP)) {
        return ("M");
      } else if ((70 >= inputA && inputA <= 74) && (BMI < 20) && (180 <= SBP)) {
        return ("M");
      }
    } else {
      //nonsmoke

      //box 1
      if ((40 >= inputA && inputA <= 44) &&
          (20 >= BMI && BMI > 20) &&
          (SBP <= 159)) {
        return ("G");
      } else if ((40 >= inputA && inputA <= 44) &&
          (20 >= BMI && BMI <= 24) &&
          (160 <= SBP && SBP >= 179)) {
        return ("G");
      } else if ((40 >= inputA && inputA <= 44) &&
          (20 >= BMI && BMI <= 35) &&
          (SBP >= 180)) {
        return ("Y");
      } else if ((40 >= inputA && inputA <= 44) &&
          (25 >= BMI && BMI >= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((40 >= inputA && inputA <= 44) &&
          (BMI >= 35) &&
          (SBP >= 180)) {
        return ("O");
      }

      //box 2

      else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI < 20) &&
          (139 < SBP && SBP > 120)) {
        return ("G");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI <= 29) &&
          (140 < SBP && SBP <= 159)) {
        return ("G");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 >= BMI && BMI > 20) &&
          (160 < SBP && SBP <= 179)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (30 <= BMI && BMI >= 35) &&
          (140 < SBP && SBP <= 159)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && BMI >= 29) &&
          (SBP <= 159)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (30 <= BMI && BMI <= 35) &&
          (SBP >= 180)) {
        return ("O");
      }
      //box 3

      else if ((50 <= inputA && inputA <= 54) &&
          (20 >= BMI && BMI <= 29) &&
          (120 <= SBP && SBP <= 139)) {
        return ("G");
      } else if ((50 <= inputA && inputA <= 54) &&
          (30 <= BMI && BMI >= 35) &&
          (SBP <= 120)) {
        return ("G");
      } else if ((50 <= inputA && inputA <= 54) &&
          (30 <= BMI && BMI >= 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) &&
          (20 >= BMI && BMI >= 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) &&
          (20 >= BMI && BMI <= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) && (20 > BMI) && (180 <= SBP)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) &&
          (BMI >= 35) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((50 <= inputA && inputA <= 54) &&
          (20 <= BMI && BMI >= 35) &&
          (180 <= SBP)) {
        return ("O");
      }

//box 4
      else if ((55 <= inputA && inputA <= 59) &&
          (20 >= BMI && BMI <= 29) &&
          (120 > SBP)) {
        return ("G");
      } else if ((55 <= inputA && inputA <= 59) &&
          (30 <= BMI && BMI >= 35) &&
          (120 > SBP)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 >= BMI && BMI > 20) &&
          (120 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI >= 35) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI < 20) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI >= 20) &&
          (160 <= SBP)) {
        return ("O");
      } else if ((55 <= inputA && inputA <= 59) &&
          (BMI > 35) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) && (BMI < 20) && (SBP >= 180)) {
        return ("Y");
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
        return ("Y");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 >= BMI && BMI > 35) &&
          (120 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((65 <= inputA && inputA <= 69) && (30 <= BMI) && (120 > SBP)) {
        return ("O");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((65 <= inputA && inputA <= 69) &&
          (30 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((65 <= inputA && inputA <= 69) &&
          (30 <= BMI && BMI < 30) &&
          (180 <= SBP)) {
        return ("R");
      }

      //box 7
      else if ((70 <= inputA && inputA <= 74) &&
          (29 >= BMI && BMI > 29) &&
          (139 <= SBP)) {
        return ("O");
      } else if ((70 <= inputA && inputA <= 74) &&
          (24 >= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((70 <= inputA && inputA <= 74) &&
          (25 <= BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("R");
      } else if ((70 <= inputA && inputA <= 74) &&
          (25 <= BMI && BMI < 25) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((70 <= inputA && inputA <= 74) &&
          (24 >= BMI) &&
          (180 <= SBP)) {
        return ("R");
      } else if ((70 <= inputA && inputA <= 74) &&
          (25 <= BMI) &&
          (180 <= SBP)) {
        return ("M");
      }
    } //women
  } else {
    if (input2 == "Smoke") {
      //smoke
      //box22
      if ((40 <= inputA && inputA <= 44) &&
          (29 >= BMI && 29 < BMI) &&
          (120 > SBP)) {
        return ("G");
      } else if ((40 <= inputA && inputA <= 44) &&
          (29 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("G");
      } else if ((40 <= inputA && inputA <= 44) &&
          (29 < BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((40 <= inputA && inputA <= 44) &&
          (29 >= BMI && 29 < BMI) &&
          (140 <= SBP && SBP <= 159)) {
        return ("Y");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 > BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("B");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI && BMI < 35) &&
          (180 <= SBP)) {
        return ("B");
      } //box 23
      else if ((45 <= inputA && inputA <= 49) && (35 < BMI) && (120 < SBP)) {
        return ("G");
      } else if ((45 <= inputA && inputA <= 49) && (35 <= BMI) && (120 < SBP)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (35 <= BMI && BMI < 35) &&
          (120 <= SBP && SBP <= 159)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && 20 > BMI) &&
          (180 <= SBP)) {
        return ("O");
      }
      //box24
      else if ((50 <= inputA && inputA <= 54) &&
          (20 <= BMI && 20 > BMI) &&
          (139 >= SBP)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("O");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI && 24 >= BMI) &&
          (160 <= SBP)) {
        return ("O");
      }
      //box25
      else if ((55 <= inputA && inputA <= 59) &&
          (24 < BMI && 24 >= BMI) &&
          (120 < SBP)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (29 >= BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (29 < BMI) &&
          (120 <= SBP && SBP <= 139)) {
        return ("O");
      } else if ((55 <= inputA && inputA <= 59) &&
          (29 < BMI && 29 >= BMI) &&
          (140 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((55 <= inputA && inputA <= 59) &&
          (24 >= BMI) &&
          (180 <= SBP)) {
        return ("O");
      } else if ((55 <= inputA && inputA <= 59) && (24 < BMI) && (180 <= SBP)) {
        return ("R");
      }
//box 26
      else if ((60 <= inputA && inputA <= 64) && (29 >= BMI) && (120 > SBP)) {
        return ("Y");
      } else if ((60 <= inputA && inputA <= 64) && (29 < BMI) && (120 > SBP)) {
        return ("O");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 < BMI && 29 >= BMI) &&
          (120 <= SBP && SBP <= 159)) {
        return ("O");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 >= BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("O");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 < BMI) &&
          (160 <= SBP && SBP <= 179)) {
        return ("R");
      } else if ((60 <= inputA && inputA <= 64) &&
          (29 < BMI && 29 >= BMI) &&
          (180 <= SBP)) {
        return ("R");
      }
      //box 27
      else if ((65 <= inputA && inputA <= 69) &&
          (29 < BMI && 29 >= BMI) &&
          (139 <= SBP)) {
        return ("O");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 > BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("O");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 <= BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("R");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 <= BMI && 35 > BMI) &&
          (160 <= SBP && 179 >= SBP)) {
        return ("R");
      } else if ((65 <= inputA && inputA <= 69) && (35 > BMI) && (180 <= SBP)) {
        return ("R");
      } else if ((65 <= inputA && inputA <= 69) &&
          (35 <= BMI) &&
          (180 <= SBP)) {
        return ("M");
      }
      //box 28
      else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (120 > SBP)) {
        return ("O");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 > BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("O");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("R");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (140 <= SBP && 179 >= SBP)) {
        return ("R");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (180 <= SBP)) {
        return ("M");
      }
    } else {
      //nonsmoke
      //box 15
      if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI && 35 > BMI) &&
          (179 >= BMI)) {
        return ("G");
      } else if ((40 <= inputA && inputA <= 44) &&
          (35 <= BMI && 35 > BMI) &&
          (180 <= SBP)) {
        return ("Y");
      }

      //box 16
      else if ((45 <= inputA && inputA <= 49) &&
          (35 <= BMI && 35 > BMI) &&
          (159 >= SBP)) {
        return ("G");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 > BMI) &&
          (160 <= SBP && 179 > SBP)) {
        return ("G");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI) &&
          (160 <= SBP && 179 > SBP)) {
        return ("Y");
      } else if ((45 <= inputA && inputA <= 49) &&
          (20 <= BMI && 20 > BMI) &&
          (180 <= SBP)) {
        return ("Y");
      }
      //BOX 17
      else if ((50 <= inputA && inputA <= 54) &&
          (20 <= BMI && 20 > BMI) &&
          (139 >= SBP)) {
        return ("G");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 >= BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("G");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI) &&
          (140 <= SBP && 159 >= SBP)) {
        return ("Y");
      } else if ((50 <= inputA && inputA <= 54) &&
          (24 < BMI && 24 >= BMI) &&
          (160 <= SBP)) {
        return ("Y");
      }
      //BOX 18
      else if ((55 <= inputA && inputA <= 59) &&
          (24 < BMI && 24 >= BMI) &&
          (120 > SBP)) {
        return ("G");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 > BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("G");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 <= BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 > BMI && 20 <= BMI) &&
          (140 <= SBP && 179 >= SBP)) {
        return ("Y");
      } else if ((55 <= inputA && inputA <= 59) &&
          (20 > BMI && 20 <= BMI) &&
          (180 <= SBP)) {
        return ("O");
      }

      //box 19
      else if ((60 <= inputA && inputA <= 64) &&
          (20 > BMI && 20 <= BMI) &&
          (159 >= SBP)) {
        return ("Y");
      } else if ((60 <= inputA && inputA <= 64) &&
          (20 > BMI && 20 <= BMI) &&
          (160 <= SBP)) {
        return ("O");
      }

      //box 20

      else if ((65 <= inputA && inputA <= 69) &&
          (20 > BMI && 20 <= BMI) &&
          (120 > SBP)) {
        return ("Y");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 >= BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("Y");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 < BMI) &&
          (120 <= SBP && 139 >= SBP)) {
        return ("O");
      } else if ((65 <= inputA && inputA <= 69) &&
          (29 < BMI && 29 >= BMI) &&
          (140 <= SBP)) {
        return ("O");
      }
      //box 21
      else if ((70 <= inputA && inputA <= 74) &&
          (29 < BMI && 29 >= BMI) &&
          (159 >= SBP)) {
        return ("O");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 > BMI) &&
          (SBP >= 160 && 179 >= SBP)) {
        return ("O");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI) &&
          (SBP >= 160 && 179 >= SBP)) {
        return ("R");
      } else if ((70 <= inputA && inputA <= 74) &&
          (35 <= BMI && 35 > BMI) &&
          (SBP >= 180)) {
        return ("R");
      }
    }
  }
  return "error";
}

// main() {
//   print(calculation());
  
// }