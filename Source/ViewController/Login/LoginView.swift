//
//  LoginView.swift
//  MeusGastos
//
//  Created by Marcus on 02/05/22.
//

import Foundation
import UIKit


class LoginView: UIView {
    
    // MARK: LabelDefault
    let titleLabel = LabelDefaut(text: "Login", font: UIFont.systemFont(ofSize: 25, weight: .semibold))
    let emailLabel = LabelDefaut(text: "Email")
    let passwordLabel = LabelDefaut(text: "Senha")
    
    // MARK: TextFieldDefault
    let emailTextField = TextFieldDefaut(placeholder: "Digite seu e-mail", keyboardType: .emailAddress)
    let passwordTextField = TextFieldDefaut(placeholder: "Digite sua senha", isSecureTextEntry: true)
    
    // MARK: ButtonDefault
    let loginButton = ButtonDefault(title: "Entrar")
    let registerButton = ButtonDefault(title: "Registrar", backgroundColor: UIColor.systemOrange)
    
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setVisualElements(){
        setTitle()
        setEmail()
        setPassword()
        setLoginButton()
        setRegisterButton()
    }
    
    private func setTitle(){
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24)
        ])
    }
    
    private func setEmail(){
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
     
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            emailLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor),
            emailLabel.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
            emailTextField.leftAnchor.constraint(equalTo: emailLabel.leftAnchor),
            emailTextField.rightAnchor.constraint(equalTo: emailLabel.rightAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    
    private func setPassword(){
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
     
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
            passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
            passwordTextField.leftAnchor.constraint(equalTo: passwordLabel.leftAnchor),
            passwordTextField.rightAnchor.constraint(equalTo: passwordLabel.rightAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
   
    private func setLoginButton(){
        self.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setRegisterButton(){
        self.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 24),
            registerButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            registerButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            registerButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
