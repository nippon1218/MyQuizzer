//
//  ViewController.swift
//  MyQuizzer
//
//  Created by Vincent on 2019/7/2.
//  Copyright © 2019 Vincent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet var progressView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         nextQuestion()
    }

    
    func nextQuestion() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        }else {
            let alert = UIAlertController(title: "了不起！", message: "你已经完成了所有的题目，是否想重新开始呢？", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "重新开始", style: .default, handler: { (alertAction) in self.startOver() })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func updateUI() {
        scoreLabel.text = "分数：\(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        progressView.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
//        if correctAnswer == pickedAnswer {
//
//            ProgressHUD.showSuccess("正确")
//
//            score = score + 1
//        }else {
//            ProgressHUD.showError("错误！")
//        }
    }
    
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    
    
}


