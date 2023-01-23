//
//  RedLughtView.swift
//  traficLightApp
//
//  Created by Никита Курюмов on 22.01.23.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    var body: some View {
       Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 20)
            .opacity(opacity)
    }
}

struct RedLughtView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1.0)
    }
}
