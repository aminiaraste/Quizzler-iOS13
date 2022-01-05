//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionlabel: UILabel!
    @IBOutlet weak var truebutton: UIButton!
    @IBOutlet weak var falsebutton: UIButton!

    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerbuttonpressed(_ sender: UIButton) {
        let useranswer = sender.currentTitle!//true or false
        let UserGotItRight = quizBrain.CheckAnswer (useranswer)
        if UserGotItRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:
             #selector(updateUI), userInfo: nil, repeats: true)
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:
             #selector(updateUI), userInfo: nil, repeats: true)
    }
    @objc func updateUI(){
        questionlabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scorelabel.text = "score : \(quizBrain.getScore())"
        truebutton.backgroundColor = UIColor.clear
        falsebutton.backgroundColor = UIColor.clear
        
    }
    
}

