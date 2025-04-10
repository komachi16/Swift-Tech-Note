//
//  MapView.swift
//  SwiftTechNote
//
//  Created by komachi16 on 2025/04/10.
//  Copyright © 2025 SwiftTechNote. All rights reserved.
//

import MapKit
import SwiftUI

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: .init(latitude: 34.011_286, longitude: -116.166_868),
            span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
