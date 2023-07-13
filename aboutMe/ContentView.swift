//
//  ContentView.swift
//  aboutMe
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var vbAlert = false
    @State private var musicAlert = false
    @State private var gameAlert = false
    @State private var clothesAlert = false
    
    
    var body: some View {
        
            VStack {
                
                Text("About Sophia Chang")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.124, saturation: 0.234, brightness: 0.838))
                
                HStack{
                    Button {
                        vbAlert = true
                    } label: {
                        Image("vbicon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    
                    Button {
                        musicAlert = true
                    } label: {
                        Image("_")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                HStack{
                    Button{
                        gameAlert = false
                    } label: {
                        Image("keyboards")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    Button{
                        clothesAlert = false
                    } label: {
                        Image("clothes")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                Text("select an icon to learn info!")
                
                
            }
            .padding()
            
            .alert("i love to play volleyball and have been playing for 3 years!", isPresented: $vbAlert, actions: {
                Button("return", action: {})
                
                    .alert("Listening to music is one of my favorite things, i especially love to listen to kpop, pop and rnb!", isPresented: $musicAlert, actions: {
                        Button("return", action:{} )
                    }
                    )
                
                    .alert("gaming has always been a part of my childhood and i really enjoy it! i play val, overwatch and minecraft!", isPresented: $gameAlert, actions:{
                        Button("return", action:{} )
                    }
                    )
                
                    .alert("I love fashion and shopping to find new clothes :), it's really fun!", isPresented: $clothesAlert, actions:{
                        Button("return", action:{} )
                    }
                    )
                
                
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
