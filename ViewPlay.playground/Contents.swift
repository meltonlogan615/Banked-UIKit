//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
  
  let input = UITextField()
  let button = UIButton()
  
  override func loadView() {
    let view = UIView()
    view.backgroundColor = .systemCyan
    
    setLayout()
    setConstraints()
    self.view = view
  }
  
  

}

extension MyViewController {
  func setLayout() {
    view.addSubview(input)
    
    input.translatesAutoresizingMaskIntoConstraints = false
    input.placeholder = "Rilo Stinks"
  }
  
  func setConstraints() {
    NSLayoutConstraint.activate([
      input.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    ])
  }
  
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
