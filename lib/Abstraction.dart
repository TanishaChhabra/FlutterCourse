//Abstraction
//We use abstraction when we have to create some code for others
//eg.PayTM wallet in Zomato/Uber etc.
//   PayTM will write code,which will be used by other apps and those apps will not have direct access to PayTM code and PayTM will write some rules which all other apps should implement for transactional purpose.

//Abstract class is only for inheriatnce and we cannot create it's applications.
abstract class PayTMGateway{
  void onSuccess() => print("Payment Transaction Successful");
  void onFailed() => print("Payment Transaction Failed");
  void enterToken() => print("Submit Token for Transactions");

  //create pay function as a RULE so that other child classes must implement it as per their customizations
  //Abstract function is a RULE,it has no definition,created by parent and which must be defined by children
  //abstract function can only be created in abstract class
  //we need not put keyword abstract, this will become by default abstract for us as we made the class abstract
  void pay(int amount);
}

//Any class which is child of Abstract class has to define all the abstract functions if available in Parent
class PaytmPaymentsWithUPI extends PayTMGateway{
  void enterUPI()=>print("Enter you UPI");
  void enterPassword()=>print("Enter your password");

  void pay(int amount){
    print("Processing Payment with UPI");
    enterUPI();
    enterPassword();
    enterToken();
    onSuccess(); // or onFailed

  }
}

class PaytmPaymentsWithNetBanking extends PayTMGateway{

  void enterUserName()=>print("Enter you User Name");
  void enterPassword()=>print("Enter your password");
  void pay(int amount){
    print("Processing Payment with NetBanking");
    enterUserName();
    enterPassword();
    enterToken();
    onSuccess(); // or onFailed


  }
}

class PaytmPaymentsWithCard extends PayTMGateway{

  void enterCardNumber()=>print("Enter you Card Details");
  void enterCardValidity()=>print("Enter your Card Validity");
  void enterCVV()=>print("Enter your CVV");
  void pay(int amount){
    print("Processing Payment with Card");
    enterCardNumber();
    enterCardValidity();
    enterCVV;
    enterToken();
    onSuccess(); // or onFailed

  }
}


class ZomatoAppPayments{
  //PayTMGateway gateway;//This is not an object , it's a reference variable
  void processPayments(){
    int choice = 1;//1 means UPI, 2 means NetBanking, 3 is card
    int amount = 1000;

    PayTMGateway gateway = null;//Ref Var to Gateway

    if(choice == 1){
      gateway = new PaytmPaymentsWithUPI();
    }else if(choice == 2){
      gateway = new PaytmPaymentsWithNetBanking();
    }else if(choice == 3){
      gateway = new PaytmPaymentsWithCard();
    }else{
      print("Please Select a wallet payment option first");

    }
    gateway.pay(amount);
  }

}

void main(){
  var app = ZomatoAppPayments();
  app.processPayments();
}