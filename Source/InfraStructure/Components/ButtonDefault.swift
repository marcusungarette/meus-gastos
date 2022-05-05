//
//  ButtonDefault.swift
//  MeusGastos
//
//  Created by Marcus on 04/05/22.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        initDefault(title: title, backgroundColor: UIColor.systemBlue)
    }
    
    init(title: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        initDefault(title: title, backgroundColor: backgroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String, backgroundColor:UIColor) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 15
        self.setTitle(title, for: .normal)
    }
}



