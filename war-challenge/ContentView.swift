//
//  ContentView.swift
//  war-challenge
//
//  Created by Jamie Cox on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background")
            VStack {
                Spacer()
                Image("logo")
                        
                Spacer()
                        
                HStack {
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                        
                Spacer()
                        
                Image("dealbutton")
                        
                Spacer()
                        
                HStack {
                            
                    Spacer()
                            
                    VStack {
                        Text("Player")
                            .font(.title3)
                            .foregroundColor(Color.white)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.top)
                    }
                            
                    Spacer()
                            
                    VStack {
                        Text("CPU")
                            .font(.title2)
                            .foregroundColor(Color.white)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.top)
                    }
                            
                    Spacer()
                    
                }
                        
                Spacer()
                        
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13")
        }
    }
}
