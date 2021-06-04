//
//  SlidersUI.swift
//  HW3.2
//
//  Created by Dmitry on 04.06.2021.
//

import SwiftUI

struct SlidersUI: View {
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack {
            StackSliders(sliderValue: $redValue, color: .red)
            StackSliders(sliderValue: $greenValue, color: .green)
            StackSliders(sliderValue: $blueValue, color: .blue)
        }
    }
}

struct StackSliders: View {
    @Binding var sliderValue: Double
    @State private var alertPresent = false
    
    let color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(lround(sliderValue))")
                .frame(width: 50)
                .foregroundColor(.white)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            
            TextField("", value: $sliderValue, formatter: NumberFormatter(), onEditingChanged: {text in
                print(text)
            }, onCommit: validateValue)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 45)
            .alert(isPresented: $alertPresent) {
                Alert(title: Text("Invalid value"), message: Text("Please enter value from 0 to 255"))
            }
        }
    }
    private func validateValue() {
        
        if !(0...255).contains(sliderValue) {
            sliderValue = 150
            alertPresent.toggle()
        }
    }
}

struct SlidersUI_Previews: PreviewProvider {
    static var previews: some View {
        SlidersUI(redValue: .constant(150), greenValue: .constant(150), blueValue: .constant(150))
    }
}
