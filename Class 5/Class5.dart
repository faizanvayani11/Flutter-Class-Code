import 'dart:io';

void main() {
  // int count = 0;
  // do {
  //   print("object");
  // } while (count > 5);

  // for (var i = 1; i < 5; i++) {
  //   for (var j = 0; j < i; j++) {
  //     stdout.write("*");
  //   }
  //   print("");
  // }

  // for (var i = 1; i < 5; i++) {
  //   for (var j = 0; j < i; j++) {
  //     stdout.write("i");
  //   }
  //   print("");
  // }

  // for (var i = 1; i < 5; i++) {
  //   for (var j = 0; j < i; j++) {
  //     stdout.write("j");
  //   }
  //   print("");
  // }

  // var abc = studentMarkSheet();
  // print("abc main kya araha hy : $abc");

  studentMarkSheet(name : "Faizan", precentage : 90 , section : "B");

}

// studentMarkSheet() {
//   String name = "Faizan";
//   num percentage = 76;
//   if (percentage > 50) {
//     print("$name pass");
//   } else {
//     print("$name Fail ");
//   }
  // return "Hello";
// }

studentMarkSheet(required name , required precentage, required section )
{
  if (precentage >50)
  {
    print("$name  Pass ");
  }
  else{
    print("$name Fail");
  }
}