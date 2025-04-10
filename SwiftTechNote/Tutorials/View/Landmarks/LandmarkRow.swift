//
//  LandmarkRow.swift
//  SwiftTechNote
//
//  Created by komachi16 on 2025/04/10.
//  Copyright © 2025 SwiftTechNote. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
