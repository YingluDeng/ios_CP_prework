//
//  ViewController.swift
//  nameCard
//
//  Created by Cecilia Deng on 6/24/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var kindOfPet: UISegmentedControl!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let kind = kindOfPet.titleForSegment(at: kindOfPet.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!). I am currently in my \(year!) year at \(schoolTextField.text!). I am a \(kind!) person and own \(numberOfPetsLabel.text!) \(kind!). It is \(morePetSwitch.isOn) that I want more pets."

        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

