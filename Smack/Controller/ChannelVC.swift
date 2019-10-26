//
//  ChannelVC.swift
//  Smack
//
//  Created by Joseph on 10/25/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60 // reveal all of the hidden view except 60pixels
        //NOTE: in the above code using self.view.frame.width, the lesson used self.view.fram.size.width which no longer works in swift4
    }
    



}
