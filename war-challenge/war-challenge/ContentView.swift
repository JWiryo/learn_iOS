//
//  ContentView.swift
//  war-challenge
//
//  Created by James Denny Wiryo on 15/6/21.
//

import SwiftUI

// View is a Protocol
/// Code inside protocol has to satisfy the structure requirement of the protocol
struct ContentView: View {
    
    // State properties have special characteristics
    /// 1. Data can be changed
    /// 2. Any reference to State properties will get notified of data changes and UI will be updated automatically
    
    @State var playerCard = "card14"
    @State var cpuCard = "card14"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    // Generate random number between 2 to 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update Cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update Score
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }
                    else if (cpuRand > playerRand){
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
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
        ContentView()
    }
}
