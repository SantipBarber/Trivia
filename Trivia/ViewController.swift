//
//  ViewController.swift
//  Trivia
//
//  Created by Santiago Pérez Barber on 27/10/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var falseButton: UIButton!
  
  @IBOutlet weak var scoreLAbel: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var progressView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configButtons()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func trueButtonPressed(_ sender: UIButton) {
    
  }
  
  @IBAction func FalseButtonPressed(_ sender: UIButton) {
    
  }
  
  private func configButtons() {
    trueButton.cmButtonResponse(title: "True")
    falseButton.cmButtonResponse(title: "False")
  }


}

