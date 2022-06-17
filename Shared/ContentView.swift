//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var address: String = ""
    @State var age: String = ""
    
    var body: some View {
                GeometryReader { geometry in
                    VStack {
                        
                        /*List {
                         Section(header: Text("Crosswalk")) {
                             Text("Crosswalk name")
                             Text("Crosswalk address")
                         }
                         Section(header: Text("Volunteer")) {
                             Text("Volunteer")
                             DisclosureGroup(content: {
                                 Text("Minors")
                                 Text("Adults")
                                 Text("Seniors")
                             }) {
                                 Text("Maximum hours")
                             }
                         }
                     }*/
                        VStack {
                            Text("Political Quiz")
                                .frame(width: 300)
                                .font(.custom("Copperplate", size: 40))
                                .foregroundColor(.white)
                                .background(Color.black)
                                
                                HStack {
                                    //List {
                                    // Section(header: Text("Gun Control Legislation"))
                                    Text("Gun Control Legislation: ")
                                    Button(action: {
                                        print("I am for Gun Control")
                                        
                                    }) {
                                        Text("For")
                                    }.padding()
                                    
                                    Button(action: {
                                        print("I am against")
                                        
                                    }) {
                                        Text("Against")
                                    }.padding()
                                
                                }
                                //}
                            
                            HStack {
                                Text("Allow Abortions")
                                Button(action: {
                                    print("I am for Abortion")
                                    
                                }) {
                                    Text("For")
                                }.padding()
                                
                                Button(action: {
                                    print("I am against abortion")
                                    
                                }) {
                                    Text("Against")
                                }.padding()
                            
                            }
                            
                            HStack {
                                Text("Political Party")
                                Button(action: {
                                    print("I am a Democrat")
                                    
                                }) {
                                    Text("Democrat")
                                }.padding()
                                
                                Button(action: {
                                    print("I am a Republican")
                                    
                                }) {
                                    Text("Republican")
                                }.padding()
                            
                            }
                            
                        }.frame(height: geometry.size.height / 2)
                        Spacer()
                    }
                }
    }
}

struct Information: View {
    @Binding var name: String
    @Binding var address: String
    @Binding var age: String
    
    var body: some View {
        Text(name)
            .bold()
        Text(address)
        HStack{
            Text("Age: ")
            Text(age)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
