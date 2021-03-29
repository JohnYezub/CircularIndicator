//
//  CircularIndicatorShape.swift
//  CircularIndicator
//
//  Created by Evgeny on 29.03.2021.
//

import SwiftUI

struct GradientQualityShape: Shape {
    var lineWidth: CGFloat = 0
    var startAngle: Angle = Angle(radians: -Double.pi / 2)
    var endAngle: Angle = Angle(radians: Double.pi * 1.5)

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2 - lineWidth / 2,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: false)
        return path
    }
}

struct GradientQualityShape_Previews: PreviewProvider {
    static var previews: some View {
        GradientQualityShape()
    }
}
