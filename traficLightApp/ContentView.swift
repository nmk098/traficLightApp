//
//  ContentView.swift
//  traficLightApp
//
//  Created by Никита Курюмов on 22.01.23.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        let lightIsON = 1.0
        let LightIsOf = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = LightIsOf
            redLightState = lightIsON
        case .yellow:
            currentLight = .green
            redLightState = LightIsOf
            yellowLightState = lightIsON
        case .green:
            currentLight = .red
            yellowLightState = LightIsOf
            greenLightState = lightIsON
        }
    }
}
    
    extension ContentView {
        var body: some View {
            ZStack {
                Color
                    .black
                    .ignoresSafeArea()
                VStack {
                    VStack {
                        CircleView(color: .red, opacity: redLightState)
                        CircleView(color: .yellow, opacity: yellowLightState)
                        CircleView(color: .green, opacity: greenLightState)
                        
                        Spacer()
                    }
                    .padding()
                    ButtonView(title: buttonTitle) {
                        if buttonTitle == "START" {
                            buttonTitle = "NEXT"
                        }
                        nextColor()
                    }
                    
                }
            }
        }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

