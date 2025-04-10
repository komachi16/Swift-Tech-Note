//
//  SwiftTechNoteApp.swift
//  SwiftTechNote
//
//  Created by komachi16 on 2024/09/12.
//

import SwiftUI

@main
struct SwiftTechNoteApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            TutorialsView()
                .environment(modelData)
        }
    }
}
