//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var manager = MapManager(Pollsite: "", zip: "")
        var body: some View {
            
            TabView {
                        AddressInput()
                            .tabItem {
                                Image(systemName: "mappin.and.ellipse")
                                Text("Input ZIP")
                            }
                            
                        viewPollingPlace()
                            .tabItem{
                                Image(systemName: "car")
                                Text("Find your site")
                            }
                
                    }.environmentObject(manager)

        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
