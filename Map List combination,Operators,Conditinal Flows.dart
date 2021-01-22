void main(){
  //CONTROLLER
  //Logical processing of data
  //1.operators -> mathematical computations
  //2.conditional flows -> decide where the control shall move as per user's decision
  //3.iterations -> to do something in repition.

  //Aritmetic Operators
  //+,-,*,/,%

  int num1 = 10;
  int num2 = 3;
  //var result = num1/num2;
  var result = num1 ~/ num2; //integral division
  print("result is $result");

  int hashTableCapacity = 10;
  var data = 99;

  int hashCode = data%hashTableCapacity;
  print("Hashcode is : $hashCode");
  print("Hashcode is : ${data%hashTableCapacity}"); //${} to have an expression in print statement

  //Increment decrement oprators
  //a++,b++,--a etc.

  //conditional operators|generate result as booleans.
  //>,<,>=,<=,==,!=
  var walletBalance=300;
  var cabFare=575;
  print("Can I book cab : ${walletBalance>=cabFare}");


  //Logical operators- &&,||,!
  var isInternetEnabled = true;
  var isGPSEnabled =true;
  print("Can we navigate using google maps : ${isInternetEnabled && isGPSEnabled}");

  //Type test operator
  var pi = 3.14;
  print("Is Pi double: ${pi is double}");

  //Bitwise and shift operators-&,|,^,>>,<<
  //exor,or operators

  //Null Check Operator - ??
  var name;
  print("name is:$name");
  name??="John"; //assign John to name iff its null
  print("name is : $name");

}