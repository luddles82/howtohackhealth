//
//  SolutionViewController.swift
//  howtohackhealth
//
//  Created by Nick Ludlow on 24/06/2016.
//  Copyright © 2016 Nick Ludlow. All rights reserved.
//

import UIKit

class SolutionViewController : UIViewController {
    

    @IBOutlet var desc: UITextView!
    @IBOutlet var buttonView: UIView!
    @IBOutlet var quote: UITextView!
    
    var model:Solution?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let model = model {
            self.title = model.title
            self.desc.text = model.description
            self.quote.text = model.quote
            
        }
    }
}
