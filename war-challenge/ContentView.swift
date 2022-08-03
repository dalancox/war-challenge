//
//  ContentView.swift
//  war-challenge
//
//  Created by Jamie Cox on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard:String = "card5"
    @State private var cpuCard:String = "card6"
    @State private var playerScore:Int = 0
    @State private var cpuScore:Int = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
            VStack {
                Spacer()
                Image("logo")
                        
                Spacer()
                        
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                        
                Spacer()
                        
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //configuring score
                    if(playerRand > cpuRand) {
                        playerScore += 1
                    } else if (playerRand < cpuRand) {
                        cpuScore += 1
                    } else {
                        print("Tie Game!")
                    }
                    
                },label: {
                    Image("dealbutton")
                })
                        
                Spacer()
                        
                HStack {
                            
                    Spacer()
                            
                    VStack {
                        Text("Player")
                            .font(.title3)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.top)
                    }
                            
                    Spacer()
                            
                    VStack {
                        Text("CPU")
                            .font(.title2)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
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
