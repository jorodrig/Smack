//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Joseph on 10/27/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func closedPressed(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND, sender: nil)  /*takes us back to the ChannelVC.swift - used together with @IBAction func prepareForUnwind(segue: UIStoryboardSegue)  in ChannelVC.swift */
        
        
        

    }
    
    

}
