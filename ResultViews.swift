//
//  ResultViews.swift
//  Political Iniquisition (iOS)
//
//  Created by csuftitan on 6/28/22.
//

//import Foundation
import SwiftUI




struct Result: View {
    @EnvironmentObject var quiz: Algo
    @State  var result : String = ""
    var body: some View {
        VStack {
            Button(action: {
                
                result = quiz.display()
                
            }) {
                Text("Display")
            }.padding()
            
            if result != ""{
            Text(quiz.display())
            }
        }
    }
}


struct QuizView: View {
    @EnvironmentObject var quiz: Algo
    var body: some View {
                GeometryReader { geometry in
                    VStack {
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
                                         quiz.compass[0] = 1
                                        
                                    }) {
                                        Text("For")
                                    }.padding()
                                    
                                    Button(action: {
                                        print("I am against")
                                        quiz.compass[0] = -1
                                        
                                    }) {
                                        Text("Against")
                                    }.padding()
                                
                                }
                                //}
                            
                            HStack {
                                Text("Allow Abortions")
                                Button(action: {
                                    print("I am for Abortion")
                                    quiz.compass[1] = 1
                                    
                                }) {
                                    Text("For")
                                }.padding()
                                
                                Button(action: {
                                    print("I am against abortion")
                                    quiz.compass[1] = -1
                                    
                                }) {
                                    Text("Against")
                                }.padding()
                            
                            }
                            
                            HStack {
                                Text("Political Party")
                                Button(action: {
                                    print("I am a Democrat")
                                    quiz.compass[2] = 1
                                    
                                }) {
                                    Text("Democrat")
                                }.padding()
                                
                                Button(action: {
                                    print("I am a Republican")
                                    quiz.compass[2] = -1
                                    
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

