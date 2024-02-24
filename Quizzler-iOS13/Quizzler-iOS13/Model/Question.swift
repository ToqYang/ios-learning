//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Santiago Toquica Yanguas on 28/07/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: Array<String>
    let correctAnswer: String
    
    init(q: String, a: Array<String>, correctAnswer: String) {
        self.text = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
