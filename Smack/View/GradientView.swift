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

    
    @IBInspectable var topColor:  UIColor = UIColor.blue {  /*allows us to change our custom colors within Main Storyboard can also use
                                                            color literal */
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor:  UIColor = UIColor.green { /*allows us to change our custom colors within Main Storyboard can also use
                                                                color literal */
        didSet {
            self.setNeedsLayout()
        }
    }
    
    /*Function to customize a UIView's gradient color using Core Graphic
     This override func is called everytime one of the above Inspectable variables is changed from within Main Storyboard
    */
    
    /* Below we use just a top color and bottom but we can add more colors within gradientLayer.colors like
     gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor, topColor.cgColor] This will add a 3rd color option in Main Storyboard*/

    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()               //create a layer
            gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor] //set top color and bottom - can change to any color
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)  //the top left in IOS i.e. upper right of any screen
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)    //the bottom right in IOS i.e. the lower right of any acreen
            gradientLayer.frame = self.bounds               // this is the bounds or full width and height of the layer's frame
            self.layer.insertSublayer(gradientLayer, at: 0) //insert into the layer i.e. refresh with the color change in Main Storyboard
    }

    
}
