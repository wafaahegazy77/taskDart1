import './person.dart';

class Student extends Person{

  var email;
  var phone;
  Map<String, double> subjectsMap = {};

  Student(
  { required var id ,
    required var name ,
    required var age,
    required var address,
    required this.email ,
    required this.phone })
      :super(
        id: id,
        name: name,
        age : age,
        address : address,
      );

  @override
  void personData() {
    print('email = $email \n phone = $phone \n Results = $subjectsMap');
    super.personData();
  }

  void addSubject(var subject , var grade){
    subjectsMap[subject] = grade;
  }

}

class Students {

  List<Student> std= [];

  void addStudent({
      var id ,
      var name ,
      var age,
      var address,
      var email,
      var phone,
  }){
    std.add(Student(
      id: id,
      name: name,
      age : age,
      address : address,
      email : email,
      phone : phone
    ));
  }

  void removeStudent (var id){
    std.removeWhere((student) => student.id == id);
  }

  void studentData(var id){
    std.forEach((student) {
      student.personData();
    });
  }

  // void addSub(var id){
  //   std.forEach((student) {
  //     student.addSubject();
  //   });
  // }

  // void addSubject(var id ,var subject , var grade){
  //   std.forEach((id)
  //       subjectsMap.add(subject : grade);
  //   );

  // }
}