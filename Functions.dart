void main(){
  //Controllers
  //The data goes for n number of states
  //We cannot store data in so many variables for n number of states.We must use multivalued containers.

  //We use MVC to store lot of data in indexed form
  var covidCases = <int>[34516,3141,1235,2122,1789];
  var total = 0;
  for(int i =0;i<covidCases.length;i++)
  {
    total+=covidCases[i];
  }
  print("Total is :$total");

  var productPrices = <int>[1200,2200,350,9020,40,1000];
  //For Each Loop with Lists
  //Here we get access to the data and not to indexes.For read purpose
  productPrices.forEach((item){
    print(item);
  });

  //Funtional Programming in dart
  //when we have our function doing one line of execution
  //void main() => print("This is Awesome Again");

  var covid19Cases21July = <int>[102441,45311,34321,65677,87454];
  var covid19Cases22July = <int>[132441,49311,44321,95677,81454];
  showMaxNumber(covid19Cases21July);
  showMaxNumber(covid19Cases22July);
  print("Sum of 10 and 20 is : ${addNumbers(10,20)}");
  print("Sum of 10.1 and 20.2 is : ${addNumbers(10.1,20.2)}");
}

void showMaxNumber(var data){
  var max = data[0];
  for(int i=1;i<data.length;i++){
    if(data[i]>max){
      max =data[i];
    }
  }
  print("Max in $data is $max");
}

//This is also a function with different data type.
//We do not need to specify any return type, we can write direct name of function - addNumbers.
//int addNumbers(var num1,var num2)
addNumbers(var num1,var num2){
  var sum = num1 + num2;
  return sum;

}

