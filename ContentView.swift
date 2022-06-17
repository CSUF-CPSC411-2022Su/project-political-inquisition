//
//  ContentView.swift
//  Political Iniquisition (iOS)
//
//  Created by csuftitan on 6/13/22.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var address: String = ""
    @State var age: String = ""
    
    var body: some View {
        VStack {
            // TODO: Add frame method call to this VStack in
            // Model 3
            VStack {
                Text("Political Inquisition")
                    .background(Color.red)
                
                HStack {
                    Spacer()
                    Text("Name: ")
                    TextField("Name", text: $name)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Address: ")
                    TextField("Address", text: $address)
                    Spacer()
                    
                }
                HStack {
                    Spacer()
                    Text("Age: ")
                    TextField("Age", text: $age)
                    Spacer()
                }
                
                
            }.frame(height: geometry.size.height / 2)
            Spacer()
            /* TODO: Replace the entire Text VStack below with
               sub view provided in Model 2
             */
            VStack {
                Information(name: $name, address: $address, age:$age)

            }
            }
                }
    }
}

// TODO: Add Information structure provided in Model 2

struct Information: View {
    @Binding var name: String
    @Binding var address: String
    @Binding var age: String
    
    var body: some View {
        Text(name)
        Text(address)
        Text(age)
    }
}
