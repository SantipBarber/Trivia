//
//  TriviaBrain.swift
//  Trivia
//
//  Created by Santiago Pérez Barber on 31/10/22.
//

import Foundation

struct TriviaBrain {
  private(set) var score = 0
  private var currentQuestionIndex = 0
  
  // TODO: - checkAnswer()
  func checkAnswer(_ userAnswer: String) -> Bool {
    #warning("TODO: ipv_22_10_31 - checkAnswer(_:) body")
    #warning("TODO: ipv_22_10_31 - Return no mock boolean")
    return true
  }
  
  func getQuestionText() -> String {
    return singleChoiceQuestions[currentQuestionIndex].question
  }
  
  // TODO: - getProgress()
  func getProgress() -> Float {
    var progress = Float(getQuestionNumber())/Float(singleChoiceQuestions.count)
    #warning("TODO: ipv_22_10_31 - Return no mock progress float")
    return Float()
  }
  
  func getQuestionNumber() -> Int {
    return currentQuestionIndex
  }
  
  // TODO: - nextQuestion()
  func nextQuestion() -> Bool {
    #warning("TODO: ipv_22_10_31 - nextQuestion() body")
    #warning("TODO: ipv_22_10_31 - Return no mock boolean")
    return true
  }
  
  mutating func startGame() {
    score = 0
    currentQuestionIndex = 0
  }
}
