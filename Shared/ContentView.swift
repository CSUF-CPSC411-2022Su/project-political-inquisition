//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        Text("Ranking")
            .frame(width: 300)
            .font(.custom("Barlot", size: 40))
            .foregroundColor(.blue)
            .padding()
        RankView()
    }
}

struct RankView: View{
    
    var body: some View {
        VStack {
            Text("How do you support the candidate?")
                .font(.custom("Abadi", size: 12)
                .foregroundColor(.red)
                .padding()
            Text("* * * * *")
                .padding()
        }
        HStack {
            Text("Comment")
                .font(.headline)
                .padding(.bottom, 30)

                        
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
