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

struct HomeView: View {
    var body: some View {
        TabView {
            Text("Home").tabItem {
                Image(systemName: "house")
            }
            Text("Tab#2").tabItem {
                Image(systemName: "heart")
            }
            Text("Tab#3").tabItem {
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
