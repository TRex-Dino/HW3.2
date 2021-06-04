//
//  RGBColorDisplay.swift
//  HW3.2
//
//  Created by Dmitry on 04.06.2021.
//

import SwiftUI

struct RGBColorDisplay: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 100/255, blue: 200/255)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorView(red: redValue, green: greenValue, blue: blueValue)
                SlidersUI(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
                Spacer()
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RGBColorDisplay()
    }
}
