import UIKit

var greeting = "Hello, playground"

print(greeting)

// let is a constant
let name = "Xiangyang"
print(name)
/**
 Int
 Float
 Double
 Bool
 Character
 */
var age: Int = 20;
var arr = [1,2,3]

var emptyArray : [Int] = []
//Operators

//Arithmetic Operators
//Comparision Operators
// Ternary Conditional Operators
// var varible = Condition ? value1 : value2

let howOldAreYou = age > 30 ? "Very old" : "You are young"
print(howOldAreYou)

//Stirng
let firstName = "Xiangyang"
let lastName = "Liu"

let helloString = "Hello " + firstName + "," + lastName + " welcome to the class"
let hello = "Hello \(firstName), \(lastName) welcome to the class"

print(helloString)

var friends : [String] = []

//Collection Types
friends.append("Tom")
friends.append("ap")
friends.append("Bill")
friends.append("Mark")
print(friends.count)
print(friends.first)

friends[0] = "Andy"
let firstFriend = friends[0]
print(firstFriend)

for (index, friend) in friends.enumerated(){
    print("Friend Name = \(friend) Index = \(index)")
}

var foodItemsEmpty = Set<String>() // Empty
var foodItemsInitialized: Set<String> = ["Pizza", "Burger", "Salad"]
var foodItemsInitializedInfeered : Set =  ["Pizza", "Burger", "Salad"]

foodItemsEmpty.insert("Pizza")
foodItemsEmpty.remove("Burger")
foodItemsEmpty.contains("Burger")

for food in foodItemsEmpty{
    print(food)
}
//Dictionary : HashTable
var countryDetails : [String : String] = [ : ]
var countryDetailsInferred: [String : String] = [
    "US" : "United States",
    "IN" : "India",
    "CN" : "China",
    "CA" : "Canada"
]

print("\(countryDetailsInferred["IN"])")
countryDetailsInferred.removeValue(forKey: "EN")

countryDetailsInferred["CA"] = "nil"

countryDetailsInferred.updateValue("country india", forKey: "INd")

for(countryCode, countryName) in countryDetailsInferred{
    print("Country Code = \(countryCode) Country Name = \(countryName)")
}

//while loop

var i = 0;
let endIndex = 5

while i < endIndex{
    print("I am here")
    i = i+1;
}

if age < 30 {
    print("You are young")
}else{
    print("You are experienced")
}

//Switch
let letter = "a"
switch letter {
case "a" :
    print("This is the first letter")
case "z":
    print("This is the last letter")
default:
    print("This is some of the middle letter")
}

//optional

var myName : String?
var myInt : Int?
myInt = 5
if let myInt = myInt{
    print(myName)
    let multipliedBy5 = myInt * 5
}
func greet(){
    print("Hello World")
}

//! means that I know the value is there

greet()

func greetWithName(firstName : String, lastName : String){
    print("Hello \(firstName), \(lastName)")
}
greetWithName(firstName: "Xiangyang", lastName: "Liu")


func getFullName(_firstName: String, _lastName : String) -> String{
    return "\(firstName), \(lastName)"
}

print(getFullName(_firstName: "Xiangyang", _lastName: "Liu"))

var a = 5
var b = 6

func incremetByOne(_ a : inout Int){
    a = a + 1
    print("Value of a inside functon = \(a)")
}
incremetByOne(&a)
print("Value of a = \(a)")

//Structures
struct User{
    let firstName : String
    let lastName : String
    var age : Int
    func getFullName() -> String{
        return "\(firstName), \(lastName)"
    }
}
var xiangyang = User(firstName: "xiangyang", lastName: "Liu",  age: 30)

//enums

enum ColorEnum{
    case red
    case green
    case blue
}

print(ColorEnum.red)

enum IntEnum : Int{
    case one = 1
    case two
    case Three
}

print(IntEnum.two.rawValue)

enum CityEnum : String{
  case DEL = "Delhi"
  case SEA = "Seattle"
  case PDX =  "Portland"
}
print(CityEnum.PDX.rawValue)

class UserClass{
    let firstName : String
    let lastName : String
    var age : Int
    func getFullName() -> String{
        return "\(firstName), \(lastName)"
    }
    
    init(firstName : String, lastName : String, age : Int){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}
var billGates = UserClass(firstName: "Bill", lastName: "Gates", age: 60)
print(billGates.getFullName())
