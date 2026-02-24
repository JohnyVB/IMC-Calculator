//
//  CalculateButton.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//
import SwiftUI

struct CalculateButton: View {
    let userGender: Int
    let userAge: Int
    let userHeight: Double
    let userWeight: Double
    var body: some View {
        NavigationLink {
            IMCResult(
                userGender: userGender,
                userAge: userAge,
                userHeight: userHeight,
                userWeight: userWeight
            )
        } label: {
            Text("Calcular")
                .font(.title)
                .bold()
                .foregroundColor(.purple)
                .frame(maxWidth: .infinity, maxHeight: 100)
                .background(.backgroundComponent)
        }
    }
}
