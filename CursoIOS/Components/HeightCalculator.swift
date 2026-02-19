//
//  HeightCalculator.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//

import SwiftUI

struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100 ... 220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}
