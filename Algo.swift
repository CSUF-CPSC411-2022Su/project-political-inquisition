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
    
    //storing written data in text box
    @Published var Map: [Address] = []
    //storing zip code in string
    @Published var zip: String = ""
    
    //switching the zip code based on users input zip
    var pAddy: String {
        switch zip {
            //add in all the zips, this is probably a terrible and slow way to do this but it's how i thought to do it right now
            case "92886": return "4501 Casa Loma Ave, Yorba Linda, CA 92886"
            case "92808": return "8201 E Santa Ana Canyon Rd, Anaheim, CA 92808"
            
            default: return ". There are no polling places near you."
        }
    }
    //init for the zip string and the address struct
    init(zip: String) {
        self.zip = zip
        Map.append(Address(ZIP: "92886"))
    }
    
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


struct Address: Identifiable {
    var id = UUID()
    var ZIP: String
    
}
