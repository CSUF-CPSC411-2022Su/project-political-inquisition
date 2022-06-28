//
//  Algo.swift
//  Political Iniquisition (iOS)
//
//  Created by csuftitan on 6/8/22.
//

import Foundation
import SwiftUI

class Algo : ObservableObject
{
    
    //This algo needs to do the following
    //1. Get the answers of the quiz the user answered
    //2. Store the answers for the user
    //3. Try to align user to canidates based on results
    
    var compass = [1: 0, 2: 0, 3: 0, 4: 0]
    
    
    
    func display() -> String{
        var conclusion : Int = 0
            for (_, value) in compass{
                if value != 0{
                    conclusion = conclusion + value
                }
            
            }
        return "Based on your answers your rank is \(conclusion)"
            
    }
}
