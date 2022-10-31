//
//  UIButton+Text.swift
//  Trivia
//
//  Created by Santiago Pérez Barber on 30/10/22.
//

import Foundation
import UIKit

extension UIButton {
  func cmButtonResponse(
    title: String,
    titleFontSize: CGFloat = 34,
    titleAlignment: UIButton.Configuration.TitleAlignment = .leading,
    titlePadding: CGFloat = 4,
    imageName: String = "",
    imagePadding: CGFloat = 6,
    imagePlacement:  NSDirectionalRectEdge = .leading,
    cornerRadius: CGFloat = 40,
    //backgroundColor: UIColor = .,
    foregroundColor: UIColor = .white
  ) {
    print(#function)
    var config = UIButton.Configuration.gray()
    // Text
    config.title = title
    var attText = AttributedString(title)
    attText.font = UIFont.systemFont(ofSize: titleFontSize)
    config.attributedTitle = attText
    config.titleAlignment = .leading
    config.titlePadding = titlePadding
    
    // Image
    config.image = UIImage(systemName: imageName)
    config.imagePadding = imagePadding
    config.imagePlacement = imagePlacement
    
    //config.cornerStyle = .large
    // Outline
    config.background.cornerRadius = cornerRadius
    config.background.strokeWidth = 6
    config.background.strokeColor = .white
//    config.baseBackgroundColor = backgroundColor
    config.baseForegroundColor = foregroundColor
    
    // Inject config
    self.configuration = config
  }
}
