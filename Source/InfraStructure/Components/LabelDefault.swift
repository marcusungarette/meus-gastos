//
//  LabelDefault.swift
//  MeusGastos
//
//  Created by Marcus on 04/05/22.
//

import Foundation
import UIKit

class LabelDefaut: UILabel {
    
    init(text: String, font: UIFont = .systemFont(ofSize: 17, weight: .regular)) {
        super.init(frame: .zero)
        initDefault(text: text, font: font)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String, font: UIFont) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = font
    }
}
