//
//  ChatVC.swift
//  Smack
//
//  Created by Joseph on 10/25/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
    }
    


    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
}
