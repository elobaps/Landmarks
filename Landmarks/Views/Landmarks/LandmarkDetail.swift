//
//  LandmarkDetail.swift
//
//  Created by Elodie-Anne Parquer on 21/04/2025.
//
import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    //    Injecte une dépendance
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        //        Propriété calculée pour rechercher l'élément dans le tableau selon une condtion
        //        ! = Force le déballage (⚠️ crash si nil)
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
//                sert à modifier la valeur du landmark pour qu'il soit favori ou non
//                $ signifie qu'on veut modifier la valeur on la change dans le tableau
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
