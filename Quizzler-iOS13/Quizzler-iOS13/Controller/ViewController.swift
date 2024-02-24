//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var viewBtns: UIView!
    var quizBrain = QuizBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if (quizBrain.checkAnswer(userAnswer)) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
    
        updateUI()
    }
    
    @objc func answerButtonPressed2(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if (quizBrain.checkAnswer(userAnswer)) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
    
        updateUI()
    }
    
    
    func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.cleanPossibleAnswers()
            self.addPossibleAnswers()
        }
    }
    
    func addPossibleAnswers() {
        let buttonWidth: CGFloat = 150
        let buttonHeight: CGFloat = 60
        let spacing: CGFloat = 20
        var yPosition: CGFloat = 150

        for answer in quizBrain.quiz[quizBrain.questionNumber].answers {
            let button = UIButton(type: .system)
            button.setTitle(answer, for: .normal)
            
            button.backgroundColor = UIColor.clear
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.yellow.cgColor
            button.layer.borderWidth = 1
            
            
            button.setTitleColor(.white, for: .normal)
            
            button.frame = CGRect(x: (view.frame.width - buttonWidth) / 2, y: yPosition, width: buttonWidth, height: buttonHeight)
            button.addTarget(self, action: #selector(answerButtonPressed2(_:)), for: .touchUpInside)

            view.addSubview(button)

            yPosition += buttonHeight + spacing
        }
    }
    
    func cleanPossibleAnswers() {
        for viewBtn in view.subviews {
            if viewBtn is UIButton {
                viewBtn.removeFromSuperview()
            }
        }
    }
}

