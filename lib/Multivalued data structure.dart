void main()
{ //Multi value containers
  //They are meant to hold a lot of data
  //1.List - Dynamic lists with indexing|Array but not fixed size
  //2.Set - Uniquenss with hashing and no indexing
  //3.Map - Key Value Pair
  //Size can grow or shrink dynamically i.e.data can be added or removed
  //eg.Shopping cart - list

  var options = <String>["Flights","Hotels","Holidays","Trains","Cabs"];
  print(options);
  print(options.runtimeType);

  var productPrices = [10,20,30];
  print(productPrices);
  var anotherPrices = [50, ...productPrices];   //spread operator
  print(anotherPrices);

  //var rollnums=[101,201,301,401,201,301];-It duplicate data will also be shown as it is a list
  var rollnums = {101,201,301,401,201,301};//repitition is not there in case of set,sets are for unique data
  print(rollnums);

  //MAP - key value pair
  var employee = {
    "name":"john",
    "email":"john@exmaple.com",
    "salary":3000
  };
  print(employee);
}