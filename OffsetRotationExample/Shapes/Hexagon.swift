//
//  DoubleEndedPencil.swift
//  OffsetRotationExample
//
//  Created by Russell Gordon on 2024-12-13.
//

import SwiftUI

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX * 0, y: rect.maxY * 0.5))
        path.addLine(to: CGPoint(x: rect.maxX * 0, y: rect.maxY * 0.5))
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY * 0.0))
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.maxY * 0.0))
        path.addLine(to: CGPoint(x: rect.maxX * 1.0, y: rect.maxY * 0.5))
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.maxY * 1.0))
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY * 1.0))
        path.addLine(to: CGPoint(x: rect.maxX * 0, y: rect.maxY * 0.5))
        path.closeSubpath()

        return path
    }
    
    
}

#Preview {
    Hexagon()
}
