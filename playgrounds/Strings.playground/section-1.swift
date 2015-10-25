// Strings and Characters 
/**
Strings are represented by the String type.
You can access the content of the a string in various ways, 
including as a collection of Character.

Swift's String type is bridged with the Foundation's NSString type.
String type is a value type.
**/

import Cocoa

/*
======== String literal ========
A string literal is a fixed sequence of textual characters
surrounded by a pair of double quotes ("")
*/
var str = "Hello, playground"

/*
======== Immutable string ========
*/
let immutableString = "This is immutable"

/*
======== Create a character constant ========
*/
let euroSymbolConstant: Character = "€"

/* 
======== Create a character value ========
*/
var euroSymbol: Character = "€"


/* 
======== Initializing an empty string ========
*/
var emptyString = String() // Initializer syntax
// Or..
emptyString = "" // Empty string literal

/*
======== Checking an empty string ========
You can check if a string empty using the "isEmpty" property
*/
if emptyString.isEmpty {
    print("The string is empty")
}

/*
======== Concatenating strings ========
*/
var str1 = "Hello"
var str2 = "World"
var finalResult = (str1 + str2)

/* 
======== String interpolation ========
*/
let name: String  = "Domenico"
var interpolation = "My name is \(name)"

/*
======== Counting characters ========
*/
var count = (countElements("Domenico"))

/*
======== String equality ========
*/
var equality1 = "Domenico"
var equality2 = "Domenico"

if(equality1 == equality2){
    var equal = "These two strings are equal"
}


/*
======== Uppercase & Lowercase ========
*/
var myString = "This is a string"
var uppercase = myString.uppercaseString
var lowercase = myString.lowercaseString

/*
======== Substrings ========
*/
// Check if a substring exists in a string
var containString = myString.rangeOfString("This", options: nil, range:nil, locale: nil)
// Retrieve a substring
var substring = x
// Retrieve first part of the substring
substring = myString.substringToIndex(4)

/*
======== Trimming ========
*/
myString = "   This should be trimmed   "
// Trimming of whitespaces
myString = myString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
// Trimming of both newline and whitespaces
myString = myString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())


/*
======== Splitting strings ========
*/
var cities = "Rome, Milan, Paris, New York"
var splittedCities: String[] = cities.componentsSeparatedByString(",")
// Using more than one character
var stringToSplit = "A-B-C-D, ciao"
var newString = stringToSplit.componentsSeparatedByCharactersInSet(NSCharacterSet (charactersInString: "-,"))

/*
======== Converting a String to NSData ========
*/
let string1 = "String to encode"
let string2: NSString = myString
let data = string2.dataUsingEncoding(NSUTF8StringEncoding)

/*
======== Prefix & Suffix ========
*/
let romeoAndJuliet = "Act 1 Scene 1: Verona, A public place"
var hasPrefix = romeoAndJuliet.hasPrefix("Act 1")
var hasSuffix = romeoAndJuliet.hasSuffix("place")


/*
======== Unicode ========
String and Characters provides an Unicode compliant way 
to work with text in your code.
*/
// Four-byte unicode scalar
let unicode1 = "\U0001F496"
// Two-byte unicode scalar
let unicode2 = "\u2665"
// One-byte unicode scalar
let unicode3 = "\x24"

var dogString = "Dog 🐶"
// UTF8 Representation
for codeUnit in dogString.utf8 {
    var utf8codeUnit = codeUnit
}
// UTF16 Representation
for codeUnit in dogString.utf16 {
    var utf16codeUnit = codeUnit
}

// Unicode scalars
for scalar in dogString.unicodeScalars {
    var scalarValue = "\(scalar)  -> \(scalar.value)"
}













