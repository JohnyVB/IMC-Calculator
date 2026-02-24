//
//  InformationText.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//

import SwiftUI

struct InformationText: View {
    let text: String
    var body : some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}
