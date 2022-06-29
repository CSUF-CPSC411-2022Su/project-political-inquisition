//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentViewAlgo: View {
    
    @StateObject var quiz = Algo(zip: "")
    //@StateObject var manager = MapManager(Pollsite: "", zip: "")
    
    var body: some View{
        Image("Oranges")
        .resizable()
        .scaledToFit()
        .frame(width: 100)
        .clipShape(Circle())
        .overlay(
            Circle()
            .stroke(lineWidth: 5)
            .foregroundColor(.black))
        .shadow(radius: 5)
        TabView {
            QuizView()
                .tabItem {
                            Image(systemName: "info")
                            Text("Quiz")
                        }
            
            
            ContentViewCand()
                .tabItem {
                            Image(systemName: "info")
                            Text("Cand")
                        }
            
                    Result()
                .tabItem {
                    Image(systemName: "info")
                    Text("Result")
                }
            
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
            
            

        }.environmentObject(quiz)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewAlgo()
    }
}
