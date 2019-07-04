//
//  Question.swift
//  MyQuizzer
//
//  Created by Vincent on 2019/7/3.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
    func someFunction() {
        // 执行一些代码
    }
}
