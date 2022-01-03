//
//  HeaderView.swift
//  Banked
//
//  Created by Logan Melton on 1/1/22.
//

import Foundation
import UIKit

class HeaderView: UIView {
  let headerStack = UIStackView()
  let titleLabel = UILabel()
  let descriptionLabel = UILabel()

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 200, height: 200)
  }
}

extension HeaderView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    headerStack.translatesAutoresizingMaskIntoConstraints = false
    headerStack.axis = .vertical
    headerStack.spacing = 24
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.textAlignment = .center
    titleLabel.numberOfLines = 1
    titleLabel.textColor = .label
    titleLabel.font = .systemFont(ofSize: 36)
    titleLabel.text = "Banked"
    
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
    descriptionLabel.textAlignment = .center
    descriptionLabel.numberOfLines = 0
    descriptionLabel.textColor = .label
    descriptionLabel.font = .systemFont(ofSize: 20)
    descriptionLabel.text = "Your premium source for all things banking"
    
  }
  
  func layout() {
    addSubview(headerStack)
    headerStack.addArrangedSubview(titleLabel)
    headerStack.addArrangedSubview(descriptionLabel)
    
    NSLayoutConstraint.activate([
      headerStack.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
      headerStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
      trailingAnchor.constraint(equalToSystemSpacingAfter: headerStack.trailingAnchor, multiplier: 1),
      bottomAnchor.constraint(equalToSystemSpacingBelow: headerStack.bottomAnchor, multiplier: 8)
    ])
    
  }
}
