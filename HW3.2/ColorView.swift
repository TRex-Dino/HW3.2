//
//  ColorView.swift
//  HW3.2
//
//  Created by Dmitry on 04.06.2021.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255)
            .frame(height: 200)
            .cornerRadius(25)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0, green: 112, blue: 133)
            .preferredColorScheme(.dark)
    }
}
