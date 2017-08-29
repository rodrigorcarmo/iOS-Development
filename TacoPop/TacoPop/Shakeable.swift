//
//  Shakeable.swift
//  TacoPop
//
//  Created by Rodrigo on 26/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView {
    func shake() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.5
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
    }
}
