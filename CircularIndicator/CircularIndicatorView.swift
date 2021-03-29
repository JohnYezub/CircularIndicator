//
//  CircularIndicatorView.swift
//  CircularIndicator
//
//  Created by Evgeny on 29.03.2021.
//

import SwiftUI

struct CircularIndicatorView: View {
    var lineWidth: CGFloat = 20
    var amount: CGFloat = 90 // 0 - empty, 100 - full circle

    private let startAngle: Angle = Angle(radians: -Double.pi / 2) // 12 o'clock
    private var endAngle: Angle {
        return Angle(radians: Double.pi * (Double(2 * amount / 100) - 0.5)) // - 0.5... 1.5
    }
    var body: some View {

        GradientQualityShape(lineWidth: lineWidth,startAngle: startAngle, endAngle: endAngle)
            .stroke(
                AngularGradient(gradient: Gradient(colors: [.blue, .red ]), center: .center, startAngle: startAngle, endAngle: .radians(Double.pi * 1.5)), style: StrokeStyle(lineWidth: lineWidth, lineCap: .butt)
            )
            .background(Circle()
                            .strokeBorder(Color.gray.opacity(0.3), style: StrokeStyle(lineWidth: lineWidth, lineCap: .butt)
                            ))
            .frame(width: 200, height: 200)
    }
}

struct CircularIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        CircularIndicatorView()
    }
}
