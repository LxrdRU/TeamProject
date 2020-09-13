//
//  Quiz.swift
//  TeamProject
//
//  Created by Andrey Markov on 2020-09-13.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

struct Quiz{
    let quizName: String
    let firstOptionAnswer: String
    let secondOptionAnswer: String
    let thirdOptionAnswer: String
    let fourthOptionAnswer: String
    
}
extension Quiz{
    static func getQuizes() -> [Quiz] {
        
        var quizes: [Quiz] = []
        
        let quizNames = DataManager.shared.quizNames
        let firstOptionAnswers = DataManager.shared.firstOptionAnswers
        let secondOptionAnswers = DataManager.shared.secondOptionAnswers
        let thirdOptionAnswers = DataManager.shared.thirdOptionAnswers
        let fourthOptionAnswers = DataManager.shared.fourthOptionAnswers
        
        for index in 0..<firstOptionAnswers.count {
            let quiz = Quiz(
                quizName: quizNames[index], firstOptionAnswer: firstOptionAnswers[index], secondOptionAnswer: secondOptionAnswers[index], thirdOptionAnswer: thirdOptionAnswers[index], fourthOptionAnswer: fourthOptionAnswers[index]
            )
            quizes.append(quiz)
        }
        return quizes
    }
}
