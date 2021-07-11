class Person{
  var id;
  var name;
  var age;
  var address;

  //Constructor
  Person({required this.id ,required this.name ,required this.age ,required this.address});

  void personData(){
    print('ID = $id \n Name = $name \n Age = $age \n Address = $address ');
  }
}