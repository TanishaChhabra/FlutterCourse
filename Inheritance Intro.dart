//OOPS : Inheritance, Abstraction and Interfaces
//What is Inheritance?
//Parent Child Relationship
//Whatever is available in parent ,that is accessible by child iff not available in child3
//Why we need Inheritance?
//Saving development time by code reuse property

//Rule 1 : Before the object of child, object of parent is created in memory.
//Rule 2 : Child can access everything in parent, if not available with child.

class Parent{
  String fname;
  String lname;
  int wealth;
  Parent(){
    print("Parent Object Constructor");
    fname = "John";
    lname = "Watson";
    wealth = 100000;
  }
  void printDetails(){
    print("Details : $fname $lname | \u20b9$wealth");
  }
}

/*class Child extends Parent{ //Inheritance Relationship
  Child(){
    wealth -= 10000;//updating attribute of parent
    print("Child Object Constructed");
  }
}*/

class Child extends Parent{ //Inheritance Relationship

  String fname;//Same attribute a parent
  int wealth;//Same attribute a parent
  String vehicle;//additional attribute in child object

  Child(){
    fname = "Fiona";
    wealth -= 10000;//updating attribute of parent
    vehicle = "4W|PB10AB1234";
    print("Child Object Constructed");
  }

  //Overriding
  void printDetails(){
    super.printDetails();//access Parent's Properties in child with super keyword
    print("Details : $fname $lname | \u20b9$wealth");
    print("Vehicle : $vehicle ");

  }
}


void main(){
  //var pRef = Parent();
  //pRef.printDetails();
  var cRef = Child();
  cRef.printDetails();
}