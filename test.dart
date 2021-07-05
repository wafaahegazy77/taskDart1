import 'dart:io';

void main(){

  // First task - Calculator of 2 numbers -> operations + - * /

  stdout.write('Enter first number: ');
  var num1 = stdin.readLineSync();
  var firstNum = int.parse(num1 ?? '0');
  // if (firstNum == null) {
  //   print("bad number");
  // }else {
  //   print('First number is $firstNum' );
  // }

  stdout.write('Enter second number: ');
  var num2 = stdin.readLineSync();
  var secondNum = int.parse(num2 ?? '0');
  if (secondNum == null) {
    print("bad number");
  }else {
    print('Second number is $secondNum' );
  }

  stdout.write('Choose operation ( + , - , * , /): ');
  var operation = stdin.readLineSync();
  print('Operation is $operation');

  if(operation == '+'){
    print('First number + second number = ${firstNum + secondNum}');
    // print(firstNum + secondNum);
  } else if(operation == '-'){
    print('First number - second number = ${firstNum - secondNum}');
  } else if(operation == '*'){
    print('First number * second number = ${firstNum * secondNum}');
  } else  if(operation == '/'){
    print('First number / second number = ${firstNum / secondNum}');
  }
}