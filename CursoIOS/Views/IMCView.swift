//
//  IMCView.swift
//  CursoIOS
//
//  Created by Johny Villegas on 21/2/26.
//

import SwiftUI

struct IMCView: View {
    @State var gender: Int = 0
    @State var age: Int = 18
    @State var height: Double = 150
    @State var weight: Int = 60
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Hombre", imageName: "star.fill", gender: 0, selectedGender: $gender)
                ToggleButton(text: "Mujer", imageName: "heart.fill", gender: 1, selectedGender: $gender)
            }
            HeightCalculator(selectedHeight: $height)
            HStack{
                Counter(title: "Edad", count: $age)
                Counter(title: "Peso", count: $weight)
            }
            CalculateButton()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar{
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator").foregroundColor(.white)
            }
        }
    }
}

#Preview {
    IMCView()
}
