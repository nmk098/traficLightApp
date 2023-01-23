//
//  Buttom.swift
//  traficLightApp
//
//  Created by Никита Курюмов on 23.01.23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
        }
                .padding()
                .frame(width: 200, height: 60)
                .background(Color.blue)
                .cornerRadius(20)
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 3)
                )
        }
    }


struct Buttom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
