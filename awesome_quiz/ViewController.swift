//
//  ViewController.swift
//  awesome_quiz
//
//  Created by Идель Мухамедьянов on 23.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayQuestion()
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var answerButtonCollection: [UIButton]!
    
    @IBAction func answerButton(_ sender: UIButton) {
        displayСorrectAnswer(button: sender)
        currentQuestionCount += 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.displayQuestion()
        }
        
    }
    
    var quiz = QuizGame()
    
    var currentQuestionCount = 0{
        didSet{
            if currentQuestionCount > 2{
                currentQuestionCount = 0
            }
        }
    }
    
    var currentQuestion: Question {
        get{
            quiz.questions[currentQuestionCount]
        }
    }
    
    func displayСorrectAnswer(button: UIButton) {
        
        if button.titleLabel?.text == currentQuestion.rightAnswer{
            button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            button.setTitleColor(.white, for: .normal)
        }
        else{
            button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            button.setTitleColor(.white, for: .normal)
        }
        
        
    }
   
    func displayQuestion () {
        
        for button in answerButtonCollection{
            button.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1), for: .normal)
        }
        
        questionLabel.text = "\(currentQuestion.question)"
        
        var answers = currentQuestion.answers.shuffled()
        
        for button in answerButtonCollection {
            var answer = ""
            answer = answers.remove(at: 0)
            button.setTitle(answer, for: .normal)
        }
    }

}
