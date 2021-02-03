//INTRODUCTION TO DART
void main() {
//String name = "John";
//name is a stroge container and data is John
//int age = 20;
  //double taxes = 0.18;

//In dart,we don't need to specify data type,it is autmatically taken care of
  var name = "John";
  var age = 20;
  var taxes = 0.18;

  //name,age, taxes are known as reference variables
  //they point to data in memory
  //data is stored using algo called hashing in data structure hashtable
  //age is a reference variable which holds the Hashcode where 20 is stored

//   print(name);
//   print(age);
//   print(taxes);
  print("Name is : $name");
  print("Age is : $age");
  print("Taxes are : $taxes");


  //dynamic : run time polymorphism
  dynamic name1 = "Jennie";
  print("name1 is $name1");
  print(name1.runtimeType);
  name1 = 10;
  print("now name1 is $name1");
  print(name1.runtimeType);

  //is used for switching functions like yes or no,silent or volume
  bool IsInternetOn = false;
  IsInternetOn = true;
  print("IsInternetOn : $IsInternetOn");
}
