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
        LandmarkList()
    }
}

#Preview {
    TutorialsView()
        .environment(ModelData())
}
