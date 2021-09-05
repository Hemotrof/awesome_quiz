//
//  Question.swift
//  awesome_quiz
//
//  Created by Идель Мухамедьянов on 21.08.2021.
//

import Foundation

var questions_demo: [[String]] = [["Что из этого является видом ткани?", "Креп-лизет", "Креп-мюзет","Креп-жаннет","Креп-жоржет"],
                                           ["Как называется комедия В. В. Маяковского?", "Пена", "Жук", "Паук", "Клоп"],
                                           ["Какой из этих городов - родина Казановы?", "Неаполь", "Милан", "Флоренция", "Венеция"]]

struct Question {
    var question: String
    var answers: Array<String>
    var rightAnswer: String
}
