class Animal{
  String _name = "";
  int _age = 0;

//  Animal(String name, int age) {
//    _name = name;
//    _age = age * 7;
//  }
//
//  String get name => _name;
//  void set name(String value) => _name = value;
//
//  int get age => _age;
//  void set age(int value) => _age = value * 7;

  //Animal([String name = ""]){
    //name != null ? this._name = name : this._name = "";
  //  this._name = name;
 // }

  //Or
  Animal({String name : ""}){
    //name != null ? this._name = name : this._name = "";
    this._name = name;
  }

  void sayHello(){
    if(_name.isEmpty){
      print("Hello!");
    }else {
      print("Hello ${_name}, nice to meet you.");
    }
  }

}