//
//  SolutionModel.swift
//  howtohackhealth
//
//  Created by Nick Ludlow on 24/06/2016.
//  Copyright © 2016 Nick Ludlow. All rights reserved.
//

import Foundation

class Solution {
    
    let mood:String

    var title:String = ""
    var description:String = ""
    var quote:String = ""
    
    init(mood:String) {
        self.mood = mood
        
        
        switch mood {
        case "anxiety":
            title = "Anxiety"
            description = "Description"
            quote = "Anxiety is bad"
        case "sleepy":
            title = "Sleepy"
            description = "Description"
            quote = "Sleep is good, get some."
        default:
            title = "Default"
            description = "Default Desc"
            quote = "Default Quote"
        }
    }

}
