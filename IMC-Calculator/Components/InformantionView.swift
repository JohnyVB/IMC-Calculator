//
//  InformantionView.swift
//  CursoIOS
//
//  Created by Johny Villegas on 23/2/26.
//
import SwiftUI

struct InformantionView: View {
    let result: Double
    let age: Int
    var body: some View {
            
        let information = getImcResult(result: result, age: age)
        
        VStack{
            Spacer()
            Text("\(information.0)").foregroundColor(information.1).font(.title).bold()
            Spacer()
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .foregroundColor(.white)
            Spacer()
            Text(information.2)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
            .cornerRadius(16)
            .padding(16)
    }
}

#Preview {
    InformantionView(result: 61.33, age: 37)
}
