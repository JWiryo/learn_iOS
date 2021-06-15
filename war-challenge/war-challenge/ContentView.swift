//
//  ContentView.swift
//  war-challenge
//
//  Created by James Denny Wiryo on 15/6/21.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Text("0")
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
