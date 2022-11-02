//
//  ViewController.swift
//  Trivia
//
//  Created by Santiago Pérez Barber on 27/10/22.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: IBOutlets
  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var falseButton: UIButton!
  @IBOutlet weak var scoreLAbel: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var progressView: UIProgressView!
  
  var triviaBrain = TriviaBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configButtons()
    // Do any additional setup after loading the view.
  }

  
  @IBAction func answerButtonPressed(_ sender: UIButton) {
    guard let userAnswer = sender.configuration?.title
    else {
      print("ERROR: Button do not have the title property set")
      return
    }
    let isRightAnswer = triviaBrain.checkAnswer(userAnswer)
    if isRightAnswer {
      sender.configuration?.background.strokeColor = .systemGreen
    } else {
      sender.configuration?.background.strokeColor = .systemRed
    }
    if triviaBrain.nextQuestion() {
      Timer.scheduledTimer(
        withTimeInterval: 0.8,
        repeats: false
      ){
        _ in self.updateScreen()
      }
    }else {
      showGameOverAlertMessage()
    }
  }
  
  // MARK: - METHODES
  func updateFinalScore() {
    scoreLAbel.text = "\(triviaBrain.score)"
  }
  
  private func configButtons() {
    trueButton.cmButtonResponse(title: "True")
    falseButton.cmButtonResponse(title: "False")
    progressView.progress = 0.0
  }
  
  private func updateScreen() {
    scoreLAbel.text = "\(triviaBrain.score)"
    questionLabel.text = triviaBrain.getQuestionText()
    trueButton.configuration?.background.strokeColor = .white
    falseButton.configuration?.background.strokeColor = .white
    print("Progress -> \(triviaBrain.getProgress())")
    progressView.progress = triviaBrain.getProgress()
  }
  
  func showGameOverAlertMessage(){
    let alert = UIAlertController(
      title: "GAME OVER",
      message: "Your score is \(triviaBrain.score) points",
      preferredStyle: .actionSheet)
    let confirmAction = UIAlertAction(title: "Play again", style: .default) {_ in
      self.triviaBrain.startGame()
      self.updateScreen()
    }
    let cancelAction = UIAlertAction(title: "Exit", style: .default) {_ in exit(0) }
    alert.addAction(confirmAction)
    alert.addAction(cancelAction)
    present(alert, animated: true)
  }
  
}

