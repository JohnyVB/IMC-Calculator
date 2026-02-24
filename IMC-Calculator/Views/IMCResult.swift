//
//  IMCResult.swift
//  CursoIOS
//
//  Created by Johny Villegas on 23/2/26.
//
import SwiftUI

struct IMCResult: View {
    let userGender: Int
    let userAge: Int
    let userHeight: Double
    let userWeight: Double
    var body: some View {
        VStack{
            Text("Tu resultado").font(.title).bold().foregroundColor(.white)
            InformantionView(
                result: calculateIMC(height: userHeight, weight: userWeight),
                age: userAge
            )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

func calculateIMC(height: Double, weight: Double) -> Double{
    return weight / pow(height / 100, 2)
}

#Preview {
    IMCResult(userGender: 1, userAge: 37, userHeight: 163.0, userWeight: 70)
}
