//
//  LandmarkList.swift
//  LetItBe
//
//  Created by alain on 2024/9/1.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks:[Landmark]{
        modelData.landmarks.filter{
            landmark in !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        
        NavigationSplitView{
            //List(landmarks, id:\.id) {
            //List(landmarks){
            //List(filteredLandmarks){
            //use the $ prefix to access a binding to a state variable, or one of its properties.
              List(){
                  Toggle(isOn: $showFavoritesOnly){
                      Text("Favourites Only")
                  }
                  
                  ForEach(filteredLandmarks){
                      landmark in NavigationLink{
                          LandmarkDetail(landmark: landmark)
                      } label:{
                          LandmarkRow(landmark: landmark)
                      }
                  }
                
                //landmark in LandmarkRow(landmark: landmark)
                
                //LandmarkRow(landmark: landmarks[0])
                //LandmarkRow(landmark: landmarks[1])
            }
            .navigationTitle("Landmarks")
            .animation(.linear, value: filteredLandmarks)
            
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
