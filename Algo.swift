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
    
    //array for list of candidates
    @Published var Candis: [Dudes] = []
    
    //init for the zip string and the address struct
    init(zip: String) {
        self.zip = zip
        Map.append(Address(ZIP: "92886"))
        
        Candis.append(Dudes(name: "Gavin Newsom", age: "", party: "Democrat", info: """
                            Governor Newsom is married to Jennifer Siebel Newsom. They have four children: Montana, Hunter, Brooklynn, and Dutch.

                            Governor Gavin Newsom is boldly leading California through an unprecedented series of crises and building a better future for all our kids.

                            He first gained national recognition as a chief early advocate for marriage equality, gun control, and marijuana decriminalization. Gavin is a champion for California values–from civil rights to immigration to environmental protection, education and expanding opportunity, and justice for all Californians.
                            """))
        Candis.append(Dudes(name: "Anthony Trimino", age: "", party: "Republican", info: """
                            Anthony Trimino is the CEO of one of America's fast growing privately held companies. He is also a grandson of an immigrant who fled communist Cuba to pursue the American dream. A dream he believes is slowly dying here in California. Anthony will restore the promise of freedom for our children, for our families and for our future. Electing Anthony will assure we have a family first approach to policies built on his strong foundation of faith. He will protect our children, protect our businesses, protect our right to worship and will work to liberate California from the hands of an overarching government—once and for all.\n874 Spectrum Center Dr. \n Irvine, CA 92618 \nTel: (213) 566-2494 | E-mail: info@AnthonyTrimino.com \nanthonytrimino.com \nFacebook: Anthony Trimino | Twitter: @TeamTrimino \nInstagram: @Atrimino, @teamtrimino
                            """))
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

struct Dudes: Identifiable {
    var id = UUID()
    var name: String
    var age: String
    var party: String
    var info: String
  
}
