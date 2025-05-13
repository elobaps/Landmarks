//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Elodie-Anne Parquer on 16/04/2025.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
