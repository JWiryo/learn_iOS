//
//  ContentView.swift
//  war-challenge
//
//  Created by James Denny Wiryo on 15/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            Image("logo")
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack{
                Image("card2")
                Spacer()
                Image("card3")
            }
            
            Spacer()
            
            Image("dealbutton")
            
            Spacer()
            
            HStack{
                VStack {
                    Text("Player")
                    Text("0")
                }
                VStack {
                    Text("CPU")
                    Text("0")
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
