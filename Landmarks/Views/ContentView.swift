//
//  ContentView.swift
//  Landmarks
//
//  Created by Elodie-Anne Parquer on 16/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
