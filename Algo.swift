//
//  Algo.swift
//  Political Iniquisition (iOS)
//
//  Created by csuftitan on 6/8/22.
//

import Foundation
import SwiftUI

struct Algo
{
    
    //This algo needs to do the following
    //1. Get the answers of the quiz the user answered
    //2. Store the answers for the user
    //3. Try to align user to canidates based on results
    
    var compass = [1: 0, 2: 0, 3: 0]
    
    
    
    func display(){
        var conclusion : Int = 0
            for (_, value) in compass{
                if value != 0{
                    conclusion = conclusion + value
                }
            
            }
        if conclusion < 0{
            print("Based on your answers you are more Right leaning")
        }
        
        else{
            print("Based on your answers you are more Left leaning")
        }
            
    }
}
