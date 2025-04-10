//
//  Landmark.swift
//  SwiftTechNote
//
//  Created by komachi16 on 2025/04/10.
//  Copyright © 2025 SwiftTechNote. All rights reserved.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
