import './person.dart';

class Student extends Person{

  var email;
  var phone;
  Map<String, double> subjectsMap = {};

  Student(
  {  var id ,
     var name ,
     var age,
     var address,
     this.email ,
     this.phone })
      :super(
        id: id,
        name: name,
        age : age,
        address : address,
        email : email,
        phone : phone,
      );

  @override
  void personData() {
    print('email = $email \n phone = $phone \n Results = $subjectsMap');
    super.personData();
  }

}

class Students {

  List <Student> std= [];

  void addStudent({
      var id ,
      var name ,
      var age,
      var address,
      var email,
      var phone
  }){
    std.add(Student(
      id: id,
      name: name,
      age : age,
      address : address,
      email : email,
      phone : phone,
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

  // void addSubject(var id ,var subject , var grade){
  //   std.forEach((id)
  //       subjectsMap.add(subject : grade);
  //   );

  }
}