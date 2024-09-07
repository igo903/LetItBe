//
//  CategoryHome.swift
//  LetItBe
//
//  Created by alain on 2024/9/2.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        
        NavigationSplitView{
            Text("Hello World")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    CategoryHome()
}
