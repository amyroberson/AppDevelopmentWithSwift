struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let questionConstant = question.lowercased()
        
        if questionConstant.hasPrefix("hello"){
            return "Why, hello there"
        } else if questionConstant.hasPrefix("where"){
            if questionConstant == "where are the cookies?" {
                return "In the Cookie Jar!"
            }
            return "To the North!"
        }else {
            return "I'm sorry I don't understand"
        }
    }
}
