void main()
{
  //Map
  //Model :Multi value container combinations
  //JSON:java script object notation - Dictionary/Map of Lists and Dictionaries
  var restaurant = {
    "name" : "Gopal Sweets",
    "phone" : "9999988888",
    "address": "Sarabha Nagar",
    "price_per_person":150,
    "time_to_deliver" :35,
    "categories":["mithai","veg","noth india"]

  };

  print(restaurant);
  restaurant["reviews"] = 5.0;
  print(restaurant);

  var dish1 = {
    "name": "samosa",
    "price" : 20
  };

  var dish2 = {
    "name": "Gujiya",
    "price" : 200
  };

  var dish3 = {
    "name": "noodles",
    "price" : 150
  };

  var dishes = [dish1,dish2,dish3];

  restaurant['dishes'] = dishes;
  print(restaurant);
}