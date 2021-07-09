import 'dart:io';
import 'student.dart';

void main(List<String> arguments) {
  var std = Students();

  Loop:
  while(true){
    print('1- to add student \n 2- to remove \n 3- to print student data \n 4- to end');
    var op = stdin.readLineSync()!;

    switch (op){
      case '1':
        print('Enter Student data as "ID Name Address Phone"');
        var data = stdin.readLineSync()!.split(' ');
        std.addStudent(
            id : data[0],
            name: data[1],
            age: data[2],
            address: data[3],
            email: data[4],
            phone: data[5]
        );
        break;
      case '2':
        print('Enter manage id please');
        var id = stdin.readLineSync()!;
        std.removeStudent(id);
        break;
      case '3':
        print('Enter manage id to print student data');
        var id = stdin.readLineSync()!;
        std.studentData(id);
        break;
      case '4':
        break Loop;
    }
  }
}





//problems
// 1- required error
// 2- late error
// 3- super error + not clear
// 4- add to map - addSubject(String id, String subject, double grade)
// 5- calculateStudentGrade(String id);
// 6-> check if specific student pass the subject or not ⇒ if grade greater than 50 pass else fail then print all subjects
