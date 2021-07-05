import 'dart:io';

void main(){

  stdout.write('Enter first number: ');
  var num1 = stdin.readLineSync();
  var firstNum = int.tryParse(num1 ?? '');
  if (firstNum == null) {
    print("bad number");
  }else {
    print('First number is $firstNum' );
  }

  stdout.write('Enter second number: ');
  var num2 = stdin.readLineSync();
  var secondNum = int.tryParse(num2 ?? '');
  if (secondNum == null) {
    print("bad number");
  }else {
    print('Second number is $secondNum' );
  }

  stdout.write('Choose operation ( + , - , * , /): ');
  var operation = stdin.readLineSync();
  print('Operation is $operation');

  if(operation == '+'){
    print('First number + second number = $firstNum + $secondNum');
    // print(firstNum + secondNum);
  } else if(operation == '-'){
    print('First number - second number = $firstNum - $secondNum');
  } else if(operation == '*'){
    print('First number * second number = $firstNum * $secondNum');
  } else if(operation == '/'){
    print('First number / second number = $firstNum/$secondNum ');
  }
}