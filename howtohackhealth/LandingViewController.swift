//
//  ViewController.swift
//  howtohackhealth
//
//  Created by Nick Ludlow on 24/06/2016.
//  Copyright © 2016 Nick Ludlow. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet var buttons: [TileButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        buttons.forEach { (button: TileButton) -> () in
            button.addTarget(self, action: #selector(showNextScreen(_:)), forControlEvents: .TouchUpInside)
        }
    }

    func showNextScreen(button: TileButton) {
        self.performSegueWithIdentifier("show", sender: button)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let button = sender as? TileButton {
            if let controller = segue.destinationViewController as? SolutionViewController {                
                controller.model = Solution(mood: button.mood)
            }
        }
    }
}

