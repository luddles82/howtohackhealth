//
//  ViewController.swift
//  howtohackhealth
//
//  Created by Nick Ludlow on 24/06/2016.
//  Copyright © 2016 Nick Ludlow. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if let button = sender as? TileButton {
            
            if let controller = segue.destinationViewController as? SolutionViewController {                
                controller.model = Solution(mood: button.mood)
            }
        }
        
    }

}

