//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var quiz = Algo()
    var body: some View{
        Image("oranges")
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
                    Result()
                .tabItem {
                    Image(systemName: "info")
                    Text("Result")
                }

        }.environmentObject(quiz)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
