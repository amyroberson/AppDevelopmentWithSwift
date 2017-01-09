/*:
 ## Exercise: Making a Shopping List

 The constants below represent some of the things you might want to add to a shopping list:
*/
let eggs = "Eggs"
let milk = "Milk"
let cheese = "Cheese"
let bread = "Bread"
let rice = "Rice"
let newLine = "\n"
//: - callout(Exercise): Create a string variable with an initial value of `""`. Add each constant item above to the list, one at a time. Add a `newLine` in between each item. Remember you can join two strings using the `+` operator.

var thing = ""
thing += eggs
thing += newLine
thing += milk
thing += newLine
thing += cheese
thing += newLine
thing += bread
thing += newLine
thing += rice
thing += newLine

print(thing)
//: [Previous](@previous)  |  page 12 of 13  |  [Next: Exercise: 501](@next)
