//
//  ContentView.swift
//  Meditation
//
//  Created by Kübra Cennet Yavaşoğlu on 7.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       CoverPage()
    }
}

struct HomeTabView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack (alignment: .leading) {
                Text("Hello, Darling!").font(.title).bold()
                HStack {
                    Text("Discover Plan").padding()
                    Spacer()
                    Image(systemName: "magnifyingglass").foregroundColor(Color(UIColor.systemGray)).padding()
                }.foregroundColor(Color.secondary.opacity(0.5)).background(Color.gray.opacity(0.1)).cornerRadius(8).shadow(radius: 1)
                VStack (alignment: .leading) {
                    Text("Ready to Continue?").font(.title).bold()
                    Text("Continue your personal course")
                }.padding(.vertical)
                ZStack {
                    VStack {
                        HStack {
                            VStack (alignment: .leading) {
                                Text("Basics").font(.title).fontWeight(.medium)
                                Text("Day 4 of 10").font(.footnote)
                            }
                            Spacer()
                            Text("20 min").padding(.all, 6).background(Color.white).clipShape(Capsule())
                            
                        }
                        HStack (alignment: .bottom) {
                            Image("basic").resizable().aspectRatio(contentMode: .fill).frame(width: 250, height: 150)
                            Spacer()
                            Image(systemName: "play.fill").foregroundColor(.white).padding().background(Color.black).clipShape(Circle())
                        }
                    }
                }.padding().background(Color(UIColor.systemOrange).opacity(0.4)).cornerRadius(24)
                Text("For You").font(.title).bold().padding(.top)
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 24) {
                        Text("Sleep").bold().padding(.all, 15).foregroundColor(.white).background(Color.black).cornerRadius(18)
                        
                        Text("Inner Peace")
                        Text("Stress")
                        Text("Anxiety")
                        Text("Anxiety")

                    }
                }
                
                HStack (spacing: 24) {
                    VStack (spacing: 24) {
                        VStack (alignment: .leading) {
                            Text("Managing Anxiety").bold()
                            Text("20 min").padding(.all, 6).background(Color.white)
                                .clipShape(Capsule())
                            
                            Image("health").resizable().aspectRatio(contentMode: .fill)
                        }.padding().frame(width: 165, height: 250).background(Color(UIColor.systemBlue).opacity(0.2)).cornerRadius(24)
                        
                        VStack (alignment: .leading) {
                            Text("Managing Anxiety").bold()
                            Text("20 min").padding(.all, 6).background(Color.white)
                                .clipShape(Capsule())
                            
                            Image("travel").resizable().aspectRatio(contentMode: .fill)
                        }.padding().frame(width: 165, height: 250).background(Color(UIColor.systemBlue).opacity(0.2)).cornerRadius(24)
                      
                      }
                      VStack (spacing: 24) {
                      VStack (alignment: .leading) {
                        Text("Managing Anxiety").bold()
                        Text("20 min").padding(.all, 6).background(Color.white)
                            .clipShape(Capsule())
                        
                        Image("health").resizable().aspectRatio(contentMode: .fill)
                    }.padding().frame(width: 165, height: 250).background(Color(UIColor.systemBlue).opacity(0.2)).cornerRadius(24)
                    
                     VStack (alignment: .leading) {
                        Text("Managing Anxiety").bold()
                        Text("20 min").padding(.all, 6).background(Color.white)
                            .clipShape(Capsule())
                        
                        Image("travel").resizable().aspectRatio(contentMode: .fill)
                    }.padding().frame(width: 165, height: 250).background(Color(UIColor.systemBlue).opacity(0.2)).cornerRadius(24)
                   }
                }.padding(.vertical)
            }.padding()
        }
    }
}

struct HomeView: View {
    var body: some View {
        TabView {
            HomeTabView().tabItem {
                Image(systemName: "house")
            }
            Text("Tab#2").tabItem {
                Image(systemName: "heart")
            }
            Text("").tabItem {
                Image(systemName: "magnifyingglass")
            }
        }
    }
}

struct CoverPage: View {
    @State var displayHome = false
    var body: some View {
        if displayHome {
            Text("From Home")
        } else {
            VStack (alignment: .leading) {
                Text("🌸").font(.system(size: 60))
                Text("Stay Calm,").font(.system(size: 45))
                Text("Stay Mindful").font(.system(size: 45))
                
                Image("meditate").resizable().aspectRatio(contentMode: .fit)
                
                HStack {
                    Spacer()
                    Button(action: {
                        displayHome = true
                    }) {
                        Image(systemName: "chevron.right").padding()
                    }.foregroundColor(.white)
                        .frame(width: 64, height: 64)
                        .background(Color.gray).clipShape(Circle())
                    Spacer()
                }
                
            }.padding(.all, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
