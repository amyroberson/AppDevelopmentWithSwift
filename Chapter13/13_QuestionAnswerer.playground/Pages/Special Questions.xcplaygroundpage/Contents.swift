/*: 
 ## Special Questions
 As well as having general answers to who, what, where questions, you can include some special answers to specific questions.
*/
func responseTo(question: String) -> String {
    
    let lowerQuestion = question.lowercased()
    var response = ""
    
    if lowerQuestion.hasPrefix("where") {
        response = "To the North!"
    }else {
        response = "That really depends"
    }
    
    if lowerQuestion == "where are the cookies?" {
        response = "In the cookie jar!"
    } else {
        response = "That really depends"
    }
    return response
}
responseTo(question: "Where are the cookies?")
/*:
 - callout(Exercise): The function above doesn’t work. The first `if` statement asks if the question starts with “where,” which it does. This means the later statements are never tested. Change the function above so that you get the answer “In the cookie jar!” to the question “Where are the cookies?”
*/
//:[Previous](@previous)  |  page 4 of 7  |  [Next: Default Answers](@next)
