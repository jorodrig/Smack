//
//  GradientView.swift
//  Smack
//
//  Created by Joseph on 10/25/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

@IBDesignable                       //Allows us to customize in the Main Storyboard side menus e.g. inspector etc
class GradientView: UIView {

    @IBInspectable var topColor:  UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }

}
