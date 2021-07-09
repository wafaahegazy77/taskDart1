class Person{
  var id;
  var name;
  var age;
  var address;

  //Constructor
  Person(this.id , this.name , this.age , this.address){}

  void personData(){
    print('ID = $id \n Name = $name \n Age = $age \n Address = $address ');
  }
}