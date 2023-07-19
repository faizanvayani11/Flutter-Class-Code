// // void main() {
// //   studentInfo("Faizan");
// // }

// // studentInfo(String name) {
// //   String result = name;
// //   print(result);
// // }

// // void main() {
// //   studentInfo();
// // }

// // studentInfo(String name) {
// //   String result = name!; // it means that the value in name can't be null
// //   print(result);
// // }

// void main() {
//   studentInfo();
// }

// studentInfo(String? name) {
//   String result = name ?? "The name will be Faizan";
//   // here ? means the value is optional if it is null the program will not give a error
//   // here ?? means if the null occurs in variable then leave null and print the given value.
//   print(result);
// }
import 'dart:io';

void main() {
  stdout.write('Enter a string: '); // Prompt the user for input
  String? input = stdin.readLineSync(); // Read the user's input

  print('You entered: $input'); // Print the input string
}
