import 'dart:ffi';

class Phone {
  final String manufacturer;
  final int yaear;
  bool? camera;
  

  Phone(this.manufacturer, this.yaear, this.camera);


  void call () {
    print("call");
  }
  

  void takePhoto (){
    if (camera = true) {
      print('take photo');
    } else {
      print('Phone is have non camera');
    }
  }

}




class IPhone extends Phone {
  IPhone(super.manufacturer, super.yaear, super.camera);
  
  
}



class Person{
  final String name;
  final int age;

  Person({ required this.name, required this.age});
  
   void display(){
        print("Name: $name \tAge: $age");
    }
  
}
  