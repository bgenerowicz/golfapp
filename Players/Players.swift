//
//  Players.swift
//  Players
//
//  Created by Bas Generowicz on 14/10/16.
//  Copyright © 2016 Bas Generowicz. All rights reserved.
//

import UIKit

class Players {
    // MARK: Properties
    var name: String
    var hcp: Int
    
    //Mark Initializiation
    init?(name: String, hcp: Int){
        //Init stored properties
        self.name = name
        self.hcp = hcp
        
        //test for fail
        if name.isEmpty || hcp < 0 {
            return nil
        }
    }
}
