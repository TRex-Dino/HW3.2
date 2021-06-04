//
//  GradientView.swift
//  HW3.2
//
//  Created by Dmitry on 04.06.2021.
//

import SwiftUI

struct GradientView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [currentColor, .init(white: 0.2)]), startPoint: .top, endPoint: .bottom)
    }
    
    private var currentColor: Color {
        Color(red: red/255, green: green/255, blue: blue/255)
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView(red: 100, green: 55, blue: 139)
    }
}
