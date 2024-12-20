//
//  ResultViewController.swift
//  Quiz
//
//  Created by Alexey Elfimov on 26.10.2024.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}

extension ResultViewController {
    private func updateResult() {
        var frequencyOfAnimals: [Animal: Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            frequencyOfAnimals[animal, default: 0] += 1
        }
        
        if let mostFrequentAnimal = frequencyOfAnimals.max(by: { $0.value < $1.value })?.key {
            updateUI(with: mostFrequentAnimal)
        }
    }
       
        private func updateUI(with animal: Animal) {
            animalTypeLabel.text = "Вы - \(animal.rawValue)!"
            descriptionLabel.text = animal.definition
    }
}
