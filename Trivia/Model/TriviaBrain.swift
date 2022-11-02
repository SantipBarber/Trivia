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
  mutating func checkAnswer(_ userAnswer: String) -> Bool {
    let actualAnswer = singleChoiceQuestions[currentQuestionIndex].answer
    if userAnswer == actualAnswer {
      print(" - Question \(currentQuestionIndex) is right")
      score += 5
      return true
    } else {
      print(" - Question \(currentQuestionIndex) is right")
      score -= 10
      return false
    }
  }
  
  func getQuestionText() -> String {
    return singleChoiceQuestions[currentQuestionIndex].question
  }
  
  // TODO: - getProgress()
  func getProgress() -> Float {
    Float(currentQuestionIndex) / Float(singleChoiceQuestions.count)
  }
  
  func getQuestionNumber() -> Int {
    return currentQuestionIndex
  }
  
  // TODO: - nextQuestion()
  mutating func nextQuestion() -> Bool {
    if currentQuestionIndex+1 < singleChoiceQuestions.count {
      currentQuestionIndex += 1
      return true
    } else {
      return false
    }
  }
  
  mutating func startGame() {
    score = 0
    currentQuestionIndex = 0
  }
}
