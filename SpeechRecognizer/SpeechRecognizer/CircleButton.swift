//
//  CircleButton.swift
//  SpeechRecognizer
//
//  Created by Rodrigo on 28/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {
    @IBInspectable var conrnerRadius: CGFloat = 30.0 {
        didSet{
            setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = conrnerRadius
    }

}
