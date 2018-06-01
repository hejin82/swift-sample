//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

// var name: type = value
var firstNumber: Int = 5

// however,declaring the type is often unnucessary.
// declaring the type implicitly shortens the code and makes it easier to type and ultimately maintain.
// var name = value
var firstNumber1 = 5

// if a variable isn't going to change,you should declare it as constant.
let secondNumber = 10

// use optinals when a value may be absent.an optional says the following:
//   a variable may or may not have a value assigned to it.
let myString = "42"
let someInteger = Int(myString)
// someInteger is inferrd to be of type "Int?",or "optional Int"
// it is not possible to convert "hello world" from a string to an Int.
// so,the value of someInteger is said to be absent or nil because on let someInteger = Int(myString)
// someInteger is inferred to be an optional Int.
// the integer Int() initializer might fail to return a value,so the method returns an optional Int,
// rather than an Int.again,the question mark indicates that the value it contains is optional,
// meaning that it might contain some Int value,or it may contain no value at all.
// the value is either some Int or is nothing at all.

// swift's nil is not the same as nil in objective-c.
// with objective-c,nil is a pointer to a nonexistent object.in swift,nil is not a pointer;
// it is the absence of a value.optionals of any type can be set to nil,not just object types.

var firstNumber2 = 2
var secondNumber2 = 3
var totalSum = firstNumber2 + secondNumber2
print("totalSum=\(totalSum)")

var myString3 = "hello world";
let someInteger3 = Int(myString3);
// someInteger3's value is now absent
if someInteger3 != nil {
    print("someInteger3 contains an integer value.")
} else {
    print("someInteger3 does not contain an integer value.")
}

// forced unwrapping
var myString4 = "42"
var someInteger4 = Int(myString4)
// someInteger4 contains a value
if someInteger != nil {
    // the ! means you have checked to ensure the optional variable has a value and use it.
    print("someInteger4 contains a value.Here it is:\(someInteger4!)")
}

// optional binding
// you can find out whether an optional contains a value and,if so,assign a temporary constant or variable
// to that value in a single action.this is called optional binding.
let someOptinal: String? = "hello world"
if let constantName = someOptinal {
    print("constantName contains a value,here it is:\(constantName)")
}

var optionalString2: String? = "my optional string"
var forcedUnWrappedString: String = optionalString2!
var nextOptionalString: String! = "an implicitly unwrapped optional"
var implicitUnwrappedString: String = nextOptionalString //no need for an !

for i in 0..<10 {
    print("the index is:\(i)")
}























