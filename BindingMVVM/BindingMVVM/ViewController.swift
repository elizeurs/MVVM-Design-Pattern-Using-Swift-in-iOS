//
//  ViewController.swift
//  BindingMVVM
//
//  Created by Elizeu RS on 04/09/22.
//

import UIKit

class ViewController: UIViewController {
  
  private var loginVM = LoginViewModel()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    setupUI()
  }
  
  @objc func login() {
    
  }

  private func setupUI() {
    
//    usernameTextField.placeholder = "Enter username"
    let usernameTextField = BindingTextField()
    usernameTextField.backgroundColor = UIColor.lightGray
    usernameTextField.borderStyle = .roundedRect
    usernameTextField.bind { [weak self] text in
      print(text)
      self?.loginVM.username = text
    }
    
    let passwordTextField = BindingTextField()
    passwordTextField.isSecureTextEntry = true
    passwordTextField.placeholder = "Enter password"
    passwordTextField.backgroundColor = UIColor.lightGray
    passwordTextField.borderStyle = .roundedRect
    passwordTextField.bind { [weak self] text in
      print(text)
      self?.loginVM.password = text
    }
    
    let loginButton = UIButton()
    loginButton.setTitle("Login", for: .normal)
    loginButton.backgroundColor = UIColor.lightGray
    loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
    
    let stackView = UIStackView(arrangedSubviews: [usernameTextField, passwordTextField, loginButton])
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.spacing = 20
    stackView.distribution = .fillEqually
    
    self.view.addSubview(stackView)
    
    stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    stackView.widthAnchor.constraint(equalToConstant: 200).isActive = true
  }
}

