//
//  OnboardingViewController.swift
//  Banked
//
//  Created by Logan Melton on 1/5/22.
//

import UIKit

class OnboardingViewController: UIViewController {
  
  let stackView = UIStackView()
  let imageView = UIImageView()
  let label = UILabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    style()
    layout()
  }
  

}

extension OnboardingViewController {
  func style() {
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.spacing = 16
    
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named: "delorean")
    
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    label.font = UIFont.preferredFont(forTextStyle: .title3)
    label.adjustsFontForContentSizeCategory = true
    label.numberOfLines = 0
    label.text = "Banked gets you crunk. Cash Rules Everything Around Me. CREAM! Get the money. Dolla, dolla bills y'all"
  }
  
  func layout() {
    stackView.addArrangedSubview(imageView)
    stackView.addArrangedSubview(label)
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
      stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1)
    ])
    
  }
}
