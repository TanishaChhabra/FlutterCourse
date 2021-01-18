//OOPS in Dart
//Object is a storage container in CS
//It is meant to store data just like List,Set and Map
//Coding an object is done by writing Class which is representation of Object
//Class is thestructure of Object as designed by developer
//Whatever we put in class,is the property of object

//Flight Booking use case from make my trip

//Principle of OOPs
//1.Think of an object
//  associate data which you need in your object
//Name of Object :FlightBooking
//Attribute : fromLocation, toLocation,departureDate, numOFTravellers,travelClass

//2.Create it's class
//Represents how an object will look like in memory
class FlightBooking{

  //Attributes : Property of Object.They are not a part of class
  /*var fromLocation;
  var toLocation;
  var departureDate;
  var numOfTravellers;
  var travelClass;*/

  //With specific Data Types
  String fromLocation;
  String toLocation;
  String departureDate;
  int numOfTravellers;
  int travelClass; //1->Economy,2->Business

}

void main(){
  //3.From the class create a real object in memory

  //Object Construction statement
  var fRef1 = new FlightBooking();
  var fRef2 = FlightBooking();

  //Reference copy operation, not an object construction
  FlightBooking fRef3 = FlightBooking();

  //new is the one which will create the object at run time.
  //But, we can skip new  and compiler will take care of it automaticaaly on our behalf.
  //These are reference variables and not objects
  print("fRef1 is : $fRef1");
  print("fRef2 is : $fRef2");
  print("fRef3 is : $fRef3");

  //Writing data in objects
  fRef1.fromLocation ="Delhi";
  fRef1.toLocation ="Bangalore";
  fRef1.departureDate="25 July 2020";
  fRef1.numOfTravellers = 2;
  fRef1.travelClass = 1;

  //Writing data in objects
  fRef1.departureDate="15 June 2020";
  fRef1.numOfTravellers = 4;

  //Read data from objects
  print("${fRef1.fromLocation} to ${fRef1.toLocation} with number of travellers ${fRef1.numOfTravellers} is scheduled on ${fRef1.departureDate}");

  //Delete object from memory
  //Garbage collector will delete the unused objects from the memory for us.
  //fRef4 = null; this way we try to tell GC we don't need this object and let it be removed from memory.
}

