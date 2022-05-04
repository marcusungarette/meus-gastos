//
//  LabelDefault.swift
//  MeusGastos
//
//  Created by Marcus on 04/05/22.
//

import Foundation
import UIKit

class LabelDefaut: UILabel {
    
    init(text: String) {
        super.init(frame: .zero)
        
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String) {
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
    }
}
