//
//  ViewController.swift
//  Quiz
//
//  Created by Alexey Elfimov on 26.10.2024.
//

import UIKit

final class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var singleStackView: UIStackView!
    
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    
    @IBOutlet var rangedLabels: [UILabel]!
    
    @IBOutlet var rangedSlider: UISlider!
    
    private let  questions = Question.getQuestions()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func singleQuestionButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func multipleQuestionButtonPressed() {
    }
    
    @IBAction func rangedQuestionButtonPressed() {
    }
    
}

