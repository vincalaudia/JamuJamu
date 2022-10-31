//
//  File.swift
//  WWDC22
//
//  Created by Jovinca Claudia on 18/04/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                Image("MenuTitle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: UIScreen.main.bounds.height/3)
                
                NavigationLink(destination: ContentView()) {Image("Start")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: UIScreen.main.bounds.height/15, alignment: .center)
                }
                
            }.animation(.easeOut(duration: 0.7))
                .background(Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                         
            )
        }.navigationViewStyle(.stack)
            .navigationTitle("Main Page")
    }
}

