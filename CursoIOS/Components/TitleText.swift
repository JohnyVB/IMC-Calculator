//
//  TitleText.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//
import SwiftUI

struct TitleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}
