//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Elodie-Anne Parquer on 21/04/2025.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
//    @Binding permet à une vue enfant de modifier une donnée qui est détenue par une vue parent.
//    C’est un pont entre parent et enfant pour partager une valeur modifiable.
//    @State      Créer une donnée locale et réactive
//    @Binding    Accéder/modifier une donnée créée ailleurs
//    $variable   Créer une liaison (binding) vers une @State
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
//        .constant(true) Crée une valeur fixe juste pour avoir un aperçu sur la preview pour tester l'affichage 
}
