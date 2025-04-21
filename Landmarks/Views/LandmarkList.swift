//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Elodie-Anne Parquer on 17/04/2025.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail : {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
