//
//  ContentView.swift
//  uitest
//
//  Created by James Denny Wiryo on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 5.0) {
                Text("Hello")
                Text("World!")
            }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
