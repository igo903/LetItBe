//
//  MapView.swift
//  LetItBe
//
//  Created by alain on 2024/9/1.
//

import SwiftUI
import MapKit
import UIKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        //Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            //center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
