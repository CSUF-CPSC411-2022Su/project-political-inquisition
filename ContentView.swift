//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//





import SwiftUI




import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    @StateObject var quiz = Algo(zip: "")
    var body: some View {
        TabView(selection: $selectedTab) {
           
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
        }
        .tag(0)
                
            //Text("QUIZ PAGE")
                QuizView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Quiz")
                    
        }
        .tag(1)
            viewCandidateList()
                .tabItem {
                    Image(systemName: "doc.on.clipboard")
                    Text("Candidates")
        }
        .tag(2)
            AddressInput()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Locator")
                }
                .tag(3)
            
            ContentViewCand()
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Add Candidate")
                }
            
           
        }.environmentObject(quiz)
        .accentColor(.blue)
}



    struct HomeView: View {
        
        @Binding var selectedTab: Int
        
        var body: some View {
            ZStack {
                Color.white.ignoresSafeArea()
                Text("Political Inquisition")
                    .font(.largeTitle)
                    .padding(.bottom, 720)
                
                Image("oc")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 275)
                    .padding(.bottom, 350)
                VStack{
    
            Text("Which Candidate is best for you?")
                        .padding(.top, 200)
                        .font(.system(size: 23.0).bold())
                    .foregroundColor(.black)
                    
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Take Quiz")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.black.opacity(0.2))
                        .hoverEffect(.highlight)
                        .cornerRadius(10)
            })
        }
    }
    }
}
}


//end of charlies code


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
