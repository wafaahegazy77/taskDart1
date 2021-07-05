import 'dart:io';

void main(){

  // First task - Calculator of 2 numbers -> operations + - * /

  stdout.write('Enter first number: ');
  var num1 = stdin.readLineSync();
  var firstNum = int.parse(num1 ?? '0');

  stdout.write('Enter second number: ');
  var num2 = stdin.readLineSync();
  var secondNum = int.parse(num2 ?? '0');

  stdout.write('Choose operation ( + , - , * , /): ');
  var operation = stdin.readLineSync();
  print('Operation is $operation');

  switch(operation){
    case '+':
      print('First number + second number = ${firstNum + secondNum}');
      break;
    case '-':
      print('First number - second number = ${firstNum - secondNum}');
      break;
    case '*':
      print('First number * second number = ${firstNum * secondNum}');
      break;
    case '/':
      print('First number / second number = ${firstNum / secondNum}');
      break;

  }
}