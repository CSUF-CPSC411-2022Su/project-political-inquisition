//
//  ResultViews.swift
//  Political Iniquisition (iOS)
//
//  Created by csuftitan on 6/28/22.
//

//import Foundation
import SwiftUI


struct ContentViewCand: View {
    @State var name: String = ""
    @State var age: String = ""
    @State var district = ""
    @State var rank: String = ""
    @State var comment: String = ""
    var body: some View {
        GeometryReader  { geometry in
        VStack {
            VStack {
                Text("Political Iniquisition")
                        .modifier(RankText1())
                HStack {
                    Spacer()
                    Text("Candidate: ")
                        .modifier(RankText3())
                    TextField("Name", text: $name)
                    Spacer()
                        .padding()
                }
                
                HStack {
                    Spacer()
                    Text("Age: ")
                        .modifier(RankText3())
                    TextField("Age", text: $age)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("District Area: ")
                        .modifier(RankText3())
                    TextField("District Area", text: $district)
                    Spacer()
                }
                
            }.frame(height: geometry.size.height / 3)
            
            HStack {
                Text("Ranking")
                    .modifier(RankText2())
            }
            
            VStack {
                Information (name: $name, age: $age, district: $district, rank: $rank, comment: $comment)
            }
            }
        }
    }
}

struct Information: View {
    @Binding var name: String
    @Binding var age: String
    @Binding var district: String
    @Binding var rank: String
    @Binding var comment: String
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Candidate: ")
                        .modifier(RankText3())
                    TextField("Name:", text: $name)
                    
                }
                HStack {
                    Text("Rank (-3 - +3): ")
                        .modifier(RankText3())
                    TextField("Rank:", text: $rank)
                }
            }
            .padding()
            
            HStack {
                Text("😀")
                    .font(.custom("Copperplate", size: 65))
                Text("How do you support?")
                    .font(.custom("Segoe Scrip", size: 20))
                Text("😀")
                    .font(.custom("Copperplate", size: 65))
            }
            
            HStack {
                Text("Comment: ")
                    .modifier(RankText3())
                TextField("Comment", text: $comment)
                Spacer()
            }
            
        }
        .padding(10)
    }
}



struct RankText1: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Calibri", size: 40))
            .foregroundColor(Color.orange)
            .background(Color.black)
            .cornerRadius(10)
    }
}

struct RankText2: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Seaford", size: 60))
            .foregroundColor(Color.black)
            .padding()
    }
}

struct RankText3: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Calibri", size: 20))
            .foregroundColor(Color.black)
            .background(Color.white)
    }
}




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

