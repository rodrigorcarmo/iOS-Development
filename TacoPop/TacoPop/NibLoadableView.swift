//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by Rodrigo on 25/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
