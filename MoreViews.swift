//
//  File.swift
//  Political Iniquisition
//
//  Created by csuftitan on 6/28/22.
//

import SwiftUI

struct AddressInput: View {
    //@SceneStorage("userStreet") var userStreet: String = ""
    @SceneStorage("userZIP") var userZIP: String = ""
    @EnvironmentObject var manager: Algo
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                Text("Input your ZIP Code")
                    .bold()
                    .font(.largeTitle)
                }
                //ZIP input
                HStack {
                    Text("ZIP Code:")
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 5)
                HStack {
                    TextField("ZIP", text: $userZIP)
                        .modifier(TextEntry())
                    Spacer()
                }
                
                Button(action: {
                    //manager.Map.append(Address(ZIP: userZIP))
                    manager.zip = userZIP
                    //userStreet = ""
                    userZIP = ""
                    
                }) {
                    Text("Submit")
                        .modifier(ButtonDesign())
                }
                
                //display address
                HStack {
                    Text("Your polling site is located at \(manager.pAddy)")
                    .bold()
                    .font(.largeTitle)
                }

               
            }
            .padding()
            
            
            
        }
    }
}

struct viewCandidateList: View {
    
    @EnvironmentObject var manager: Algo
    //@State var zip: Int
    
    var body: some View {
        NavigationView {
            List {
                ForEach(manager.Candis) {
                    candidate in
                    VStack (alignment: .leading) {
                        
                        NavigationLink(destination: Text(candidate.info)) {
                            Text(candidate.name)
                                .font(.largeTitle)
                                
                        }
                        /*Text(candidate.name)
                            .font(.largeTitle)
                        HStack{
                        Text(candidate.party)
                            .font(.caption)
                        Text(candidate.age)
                            .font(.caption)
                        }*/
                    }
                }
                
            }
            
            }
        }
    }


/*struct viewPollingPlace: View {
    
    @EnvironmentObject var manager: Algo
    //@State var zip: Int
    
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Your polling site is located at \(manager.pAddy)")
                    .bold()
                    .font(.largeTitle)
                }
            
            }
        }
    }
}*/





