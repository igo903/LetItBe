//
//  ContentView.swift
//  LetItBe
//
//  Created by alain on 2024/8/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text("Let it Be")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        
                    Spacer()
                    Text("California")
                        
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Yosemite")
                    .font(.title2)
                Text("Descriptive text goes here")
                
            }
            .padding()
            
            Spacer()
        }

    }
}

#Preview {
    ContentView()
}
