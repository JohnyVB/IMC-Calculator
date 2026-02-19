//
//  CalculateButton.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//
import SwiftUI

struct CalculateButton: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {}){
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}
