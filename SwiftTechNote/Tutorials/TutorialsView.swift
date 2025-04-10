//
//  TutorialsView.swift
//  SwiftTechNote
//
//  Created by komachi16 on 2025/04/10.
//  Copyright © 2025 SwiftTechNote. All rights reserved.
//

import SwiftUI

struct TutorialsView: View {
    var body: some View {
        MapView().frame(height: 300)

        CircleImage()
            .offset(y: -130)
            .padding(.bottom, -130)

        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }

            Divider()

            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
        }
        .padding()

        Spacer()
    }
}

#Preview {
    TutorialsView()
}
