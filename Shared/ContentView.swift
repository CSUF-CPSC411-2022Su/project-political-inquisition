//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Political IniquistionApp")
            .padding()
        
        Text("Rank")
            .padding()
        RankView()
    }
}

struct RankView: View{
    
    var body: some View {
        VStack {
            Text("How do you support the candidate?")
                .padding()
            Text("* * * * *")
                .padding()
        }
        HStack {
            Text("Comment")
  //          Button(action: {
   //             print("Comment")
 //           })
  //          Text("OK")
 //       } .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
