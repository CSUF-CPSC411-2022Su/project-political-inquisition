//
//  Map.swift
//  Political Iniquisition
//
//  Created by csuftitan on 6/8/22.
//




import Foundation

//store all the addresses
class MapManager: ObservableObject {
        @Published var Map: [Address] = []
        @Published var Pollsite: String
        @Published var zip: String = ""
    
    var pAddy: String {
        switch zip {
            //add in all the zips, this is probably a terrible and slow way to do this but it's how i thought to do it right now
            case "92886": return "4501 Casa Loma Ave, Yorba Linda, CA 92886"
            case "92808": return "8201 E Santa Ana Canyon Rd, Anaheim, CA 92808"
            
            default: return ". There are no polling places near you."
        }
    }
        init(Pollsite: String, zip: String) {
            self.Pollsite = Pollsite
            self.zip = zip
            Map.append(Address(Street: "19731 Canyon Dr.", ZIP: "92886"))
        }
    }
    
struct Address: Identifiable {
    var id = UUID()
    var Street: String
    var ZIP: String
    
}




    
 
