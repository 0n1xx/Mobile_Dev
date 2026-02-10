struct QuizBrain{
    let quiz = [
        Question(text: "Haiti occupies the entire island of Hispaniola.", answer: "false"),
        Question(text: "Haiti is located in the Caribbean.", answer: "true"),
        Question(text: "Haiti was colonized by Spain.", answer: "false"),
        Question(text: "Port-au-Prince is the capital city of Haiti.", answer: "true"),
        Question(text: "English is an official language of Haiti.", answer: "false"),
        Question(text: "Haiti gained independence in 1804.", answer: "true"),
        Question(text: "Haiti is the largest country in the Caribbean by land area.", answer: "false"),
        Question(text: "Haiti shares a land border with the Dominican Republic.", answer: "true"),
        Question(text: "Haiti became independent in the 20th century.", answer: "false"),
        Question(text: "French and Haitian Creole are the official languages of Haiti.", answer: "true")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool { // _ -> this symbolizes that it doesn't display an external parameter name while userAnswer can be used in the body of the function
        if userAnswer == quiz[questionNumber].answer{
            // User got it right
            score += 1
            return true
        }
        else{
            return false
        }
    }
    // A function that displays the text of the question
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    // A function that allows the progress bar to move
    func getProgress() -> Float{
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    // A fcunction that is responsible for the question progression
    mutating func nextQuestion(){
        if questionNumber < (quiz.count - 1){
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
    // Getting the number of correct answers
    func getScore() -> Int{
        return score
    }
}
