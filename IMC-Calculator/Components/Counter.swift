//
//  Counter.swift
//  CursoIOS
//
//  Created by Johny Villegas on 22/2/26.
//
import SwiftUI

struct Counter: View {
    let title: String
    @Binding var count: Int
    var body: some View {
        VStack{
            TitleText(text: title)
            InformationText(text: String(count))
            HStack{
                Button(action: {
                    if (count > 0) {
                        count -= 1
                    }
                }){
                    ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
                Button(action: {
                    if (count < 130) {
                        count += 1
                    }
                }){
                    ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}

