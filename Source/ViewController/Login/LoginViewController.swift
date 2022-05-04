//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Marcus on 02/05/22.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.backgroundColor = .white
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
}
