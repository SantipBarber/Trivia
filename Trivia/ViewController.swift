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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configButtons()
    // Do any additional setup after loading the view.
  }
  
  private func configButtons() {
    trueButton.cmButtonResponse(title: "True")
    falseButton.cmButtonResponse(title: "False")
  }


}

