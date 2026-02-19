//
//  ToggleButton.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//

import SwiftUI

struct ToggleButton: View {
    let text: String
    let imageName: String
    let gender: Int
    @Binding var selectedGender: Int
    var body: some View {
        let color = if (gender == selectedGender){
            Color.backgroundSelected
        } else {
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }) {
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }
    }
}
