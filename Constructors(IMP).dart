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

  //Constructors: Created in class but property of object
  //1.Default constructor
  //it will be executed automatically when object will be constructed
  //No constructor overloading is allowed
  FlightBooking(){
    fromLocation = "Delhi";
    toLocation = "Bangalore";
    departureDate = "25 July,2020";
    numOfTravellers = 1;
    travelClass = 1;

  }

  //Dart gives us Syntatic Sugar for functions or constructors in class
  FlightBooking.init(this.fromLocation, this.toLocation, this.departureDate, this.numOfTravellers, this.travelClass);

  //Parameters used as Map-very important (fRef7)
  FlightBooking.initAgain({this.fromLocation, this.toLocation, this.departureDate, this.numOfTravellers,this.travelClass});

  void updateFlightDetails(String fromLocation, String toLocation, String departureDate, int numOfTravellers,int travelClass){
    this.fromLocation = fromLocation;
    this.toLocation = toLocation;
    this.departureDate = departureDate;
    this.numOfTravellers = numOfTravellers;
    this.travelClass = travelClass;
  }

  void showFlightDetails(){
    print("==FlightDetails: ${this.fromLocation} to ${this.toLocation}");
    print("Departure Date: ${this.departureDate}");
    print("Traveller: ${this.numOfTravellers} | Class : ${this.travelClass}");
    print("===============");
  }

}
void main(){
  //3.From the class create a real object in memory
  //Object Construction statement
  var fRef1 = new FlightBooking();
  var fRef2 = FlightBooking();

  //Reference copy operation, not an object construction
  FlightBooking fRef3 = FlightBooking();
  FlightBooking fRef5 = new FlightBooking();
  FlightBooking fRef6 = new FlightBooking.init("Chandigarh","Goa","20 Aug 2020",8,2);
  FlightBooking fRef7 = FlightBooking.initAgain(fromLocation:"Chandigarh", toLocation: "Goa",departureDate: "20 Aug 2020", numOfTravellers: 8,travelClass: 2);

  //new is the one which will create the object at run time.
  //But, we can skip new  and compiler will take care of it automatically on our behalf.
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
/*  print("${fRef1.fromLocation} to ${fRef1.toLocation} with number of travellers ${fRef1.numOfTravellers} is scheduled on ${fRef1.departureDate}");

  print("${fRef5.fromLocation} to ${fRef5.toLocation} with number of travellers ${fRef5.numOfTravellers} is scheduled on ${fRef5.departureDate}");

  print("${fRef6.fromLocation} to ${fRef6.toLocation} with number of travellers ${fRef6.numOfTravellers} is scheduled on ${fRef6.departureDate}");

  print("${fRef7.fromLocation} to ${fRef7.toLocation} with number of travellers ${fRef7.numOfTravellers} is scheduled on ${fRef7.departureDate}");*/

  fRef1.showFlightDetails();
  fRef2.showFlightDetails();
  fRef3.showFlightDetails();
  //fRef4.showFlightDetails();
  fRef5.showFlightDetails();
  fRef6.showFlightDetails();
  fRef7.showFlightDetails();

  //Delete object from memory
  //Garbage collector will delete the unused objects from the memory for us.
  //fRef4 = null; this way we try to tell GC we don't need this object and let it be removed from memory.
}

