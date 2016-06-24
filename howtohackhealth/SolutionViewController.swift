//
//  SolutionViewController.swift
//  howtohackhealth
//
//  Created by Nick Ludlow on 24/06/2016.
//  Copyright © 2016 Nick Ludlow. All rights reserved.
//

import UIKit

class SolutionViewController : UIViewController {
    
    var model:Solution?
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let model = model {
            self.title = model.title
            
        }

    }
    
}
