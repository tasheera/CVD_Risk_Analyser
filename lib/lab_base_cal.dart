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
    if (input_G=="men"){
      if (input_S=="smoke"){

        //box 1

        if ((40 >= inputA && inputA <= 44) &&
          (6.9>= chole) &&
          (SBP <120)) {
        return ("yellow");
      }
      else if ((40 >= inputA && inputA <= 44) &&
          (6.9< chole) &&
          (SBP <120)) {
        return ("oranage");
      }else if ((40 >= inputA && inputA <= 44) &&
          (5.9>= chole) &&
          (SBP >=120 && SBP <=139 )) {
        return ("yellow");
      }else if ((40 >= inputA && inputA <= 44) &&
          (5.9>= chole) &&
          (SBP >=120 && SBP <=139 )) {
        return ("yellow");
      }else if ((40 >= inputA && inputA <= 44) &&
          (5.9< chole) &&
          (SBP >=120 && SBP <=139 )) {
        return ("orange");
      }else if ((40 >= inputA && inputA <= 44) &&
          (4> chole) &&
          (140 <=SBP && SBP <=159 )) {
        return ("yellow");
      }else if ((40 >= inputA && inputA <= 44) &&
          (4<= chole) &&
          (140 <=SBP && SBP <=159 )) {
        return ("orange");
      }else if ((40 >= inputA && inputA <= 44) &&
          (6.9>= chole) &&
          (160 <=SBP && SBP <=179 )) {
        return ("orange");
      }else if ((40 >= inputA && inputA <= 44) &&
          (6.9< chole) &&
          (160 <=SBP && SBP <=179 )) {
        return ("red");
      }else if ((40 >= inputA && inputA <= 44) &&
          (4.9>= chole) &&
          (180 <=SBP )) {
        return ("orange");
      }else if ((40 >= inputA && inputA <= 44) &&
          (4.9< chole && chole<7) &&
          (180 <=SBP )) {
        return ("red");
      }else if ((40 >= inputA && inputA <= 44) &&
          ( chole>=7) &&
          (180 <=SBP )) {
        return ("meroon");
      }
      //box 2
      else if ((45>= inputA && inputA <= 49) &&
          ( chole<=5.9) &&
          (120>SBP )) {
        return ("yello");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole>5.9) &&
          (120>SBP )) {
        return ("orange");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole<4) &&
          (120<=SBP && SBP>=139 )) {
        return ("yellow");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole>=4) &&
          (120<=SBP && SBP>=139 )) {
        return ("orange");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole<=6.9) &&
          (140<=SBP && SBP>=159 )) {
        return ("orange");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole>6.9) &&
          (140<=SBP && SBP>=159 )) {
        return ("red");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole<=4.9) &&
          (160<=SBP && SBP>=179 )) {
        return ("orange");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole>4.9) &&
          (160<=SBP && SBP>=179 )) {
        return ("red");
      }else if ((45>= inputA && inputA <= 49) &&
          ( chole<=5.9) &&
          (180<=SBP)) {
        return ("meron");
      }
      //box 3
      else if ((50>= inputA && inputA <= 54) &&
          ( chole<=4.9) &&
          (120>SBP)) {
        return ("yellow");
      }else if ((50>= inputA && inputA <= 54) &&
          ( chole>4.9) &&
          (120>SBP)) {
        return ("orange");
      }else if ((50>= inputA && inputA <= 54) &&
          ( chole>4.9 && chole <=4.9) &&
          (120<=SBP && SBP <=139)) {
        return ("orange");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole <=5.9) &&
          (140<=SBP && SBP <=159)) {
        return ("orange");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole >5.9) &&
          (140<=SBP && SBP <=159)) {
        return ("red");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole <4) &&
          (160<=SBP && SBP <=179)) {
        return ("orange");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole>=4 && chole <=6.9) &&
          (160<=SBP && SBP <=179)) {
        return ("red");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole >6.9) &&
          (160<=SBP && SBP <=179)) {
        return ("meroon");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole <=4.9) &&
          (180<=SBP )) {
        return ("red");
      }else if ((50>= inputA && inputA <= 54) &&
          (chole >4.9) &&
          (180<=SBP )) {
        return ("meroon");
      }
      //box4
      else if ((55>= inputA && inputA <= 59) &&
          ( chole>4.9 && chole <=4.9) &&
          (120>SBP)) {
        return ("orange");
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole<5.9) &&
          (120<=SBP && SBP <=139)) {
        return ("orange");
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole >=5.9) &&
          (120<=SBP && SBP <=139)) {
        return ("red");
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole<4) &&
          (140<=SBP && SBP <=159)) {
        return ("orange");  // 18 box
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole>=4 && chole <=6.9 ) &&
          (140<=SBP && SBP <=159)) {
        return ("red"); 
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole >=6.9 ) &&
          (140<=SBP && SBP <=159)) {
        return ("meron"); 
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole <=5.9 ) &&
          (160<=SBP && SBP <=179)) {
        return ("orange"); 
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole >5.9 ) &&
          (160<=SBP && SBP <=179)) {
        return ("M"); 
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole <4 ) &&
          (180<=SBP )) {
        return ("R"); 
      }else if ((55>= inputA && inputA <= 59) &&
          ( chole <4 ) &&
          (180<=SBP )) {
        return ("M"); 
      }



        


      }else{
        //non smoke
      }



    }else{
      //women
    }






}else{
  //without diabites
}




















}
