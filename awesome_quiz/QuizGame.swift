//
//  QuizGame.swift
//  awesome_quiz
//
//  Created by Идель Мухамедьянов on 21.08.2021.
//

import Foundation


class QuizGame {
    
    var questions = [Question]()

    init() {
        for item in questions_demo {
            questions.append(Question(question: item[0], answers: [item[1], item[2], item[3], item[4]], rightAnswer: item[4]))
        }
    }
}
