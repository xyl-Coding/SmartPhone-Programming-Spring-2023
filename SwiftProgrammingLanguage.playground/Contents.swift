
import UIKit

var name = "Xiangyang"
//let is constant that can not be changed
let name1 = "Northeastern University"
var age : Int = 21

var arr : [Int] = [1,2,3]

var emptyArray: [Int] = []

print(Int8.max)
print(Int16.max)

/**
 Int
 Float
 Double
 Bool
 Character   'a'  'B'
 String
 Array  [1,2,3]
 
 */


print(name)

//Operators
//Arithmetic operators

/**
 add +
 Subs -
 mult *
 divide /
 remainder %
 assignment =
 
 //Comparision Operators
 
 Equal ==
 Not Equal !=
 Great than >
 Less than <
 Greater than eaual to >=
 Less that equal to <=
 

 **/

let howOldAreYou = age   >  40 ? "Experienced" : "You are young"
print(howOldAreYou)

//String Interpoolation

let firstName = "Xiangyang"
let lastName = "Liu"

let helloString = "Hello " + firstName + " " + lastName + " Welcome to the class"
let hello = "Hello \(firstName), \(lastName) welcome to the class"

print(helloString)

var friends: [String] = []

friends.append("Tom")
friends.append("Emily")
friends.append("Bill")
friends.append("Mark")
friends.append("Peter")
friends.append("Amy")

print(friends.count)
print(friends.first)
print(friends.endIndex)
print(friends.remove(at : 1))
//print(friends.(at : 1))

let firstFriend = friends[0]

friends[0] = "Andy"
print(firstFriend)

for friend in friends{
    print(friends)
}

for(index, friend) in friends.enumerated(){
    print("Friend Name = \(friend)  index = \(index)")
}
//Sets

var breakfastItems = Set<String>() //Empty

var bearkfastItemsInitialized: Set<String> = ["Pizza", "Burger", "Salad"]

var foodItemsInitializedInferred : Set = ["Pizza", "Burger", "Salad"]

print(foodItemsInitializedInferred.contains("Burger"))

for food in foodItemsInitializedInferred{
    print(foodItemsInitializedInferred.contains("Burger"))
}


//Collection = Types


//Dictionary : HashTable

var countryDetailsEmpty : [String : String] = [ : ]

var countryDetailInitializes : [String : String] = [
    "US" : "United states",
    "IN" : "India",
    "CN" : "China",
    "CA" : "Canada",
    "EN" : "England",
    
]

print("\(countryDetailsInderred["IN"])")

countryDetailsInferrred.removeValue(forKey: "EN")

countryDetailsInferred["CA"] = CFNull

countryDetailsInferred["IN"] = "Country India"


var i = 0;
let endIndex =  5

while i < endIndex{
    print("I am here")
    i = i+1
}

if age < 40 {
    print("you are yound")
}else{
    print("you are experienced")
}

//Switch
let letter = "a"

switch letter{
case "a" :
    print("This is the first letter")
case "z" :
    print("This is the last letter")
default:
    print("This is some of the middle element")
}


var myName : String?

print(myName)

var myInt : Int?

let multiipliedBy5 = myInt! * 5

myInt = 5
let multipliedBy5 = 0
if let val = myInt{
    let multioliedBy5 = val * 5
    print(multipliedBy5)
}

let multipliedBy5 = multipliedBy5  * 5
print(nultipliedBy5)


var myInt : Int ?
myInt = 5

if let myInt{
  let multipliedBy5 = myInt * 5
  print(multipliedBy5)
    
}
func greet(){
    print("Hello World")
}

greet()

func greetWithName(firstName : Stirng, lastName : String){
    print("Hello\(firstName), \(lastName)")
}

greetWithName(firstName: "Xiangyang", lastName: "Liu")

greetWithName(firstName: <#T##<<error type>>#>, lastName: <#T##String#>)

func getFullName(_firstName: String, _lastName : String) -> String{
    return "\(firstName), \(lastName)"
}

print(getFullName("Xiangyang", "Liu"))

var a = 5
var b = 6

func passByValue(_a : Int, _b : inout Int){
    a = a+1
    print("Value of a inside function = \(a)")
}

incrementByOne(&a)
print("Value of a = \(a)")

//Structures

struct User{
    let firstName = String
    let lastName : String
    var age : Int
    
    func getFullName(){
        return "\(firstName), \(lastName)"
    }
    
}

var ashish = User(firstName: "Xiangyang", lastName: "Liu",  age: 21)
print(ashish.getFullName())

//Enums

enum ColorEnum{
    case red
    case green
    case blue
}

print(ColorEnum.red)

enum intEnum : Int{
    case one = 1
    case two
    case three
}

print(IntEnum.two.rawValue)

enum CityEnum : String{
    case DEL = "Delhi"
    case SEA = "Seattle"
    case PDX = "Portland"
    
}

print(CityEnum.PDX)


class UserClass{
    let firstName: String
    let lastName: String
    var age : Int
    func getFullName()-> String{
        return "\(firstName), \(lastName)"
    }
    
    init(firstName: String, lastName: Stirng, age : Int){
        self.firstName
    }
}


//Guard


