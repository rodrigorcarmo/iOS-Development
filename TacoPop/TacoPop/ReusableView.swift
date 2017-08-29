//
//  ReusableView.swift
//  TacoPop
//
//  Created by Rodrigo on 25/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
