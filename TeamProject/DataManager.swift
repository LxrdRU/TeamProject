//
//  DataManager.swift
//  TeamProject
//
//  Created by Andrey Markov on 2020-09-13.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//


class DataManager{
    
    static let shared = DataManager()
    
    private init() {}
    
    let quizNames = [
        "Geography","Math", "Physics"
    ]
    let firstOptionAnswers = [
        "Answer1","Answer2","Answer3"
    ]
    let secondOptionAnswers = [
        "Answer1","Answer2","Answer3"
    ]
    let thirdOptionAnswers = [
        "Answer1","Answer2","Answer3"
    ]
    let fourthOptionAnswers = [
        "Answer1","Answer2","Answer3"
    ]
}
