//
//  ExampleView.swift
//  OffsetRotationExample
//
//  Created by Russell Gordon on 2024-12-13.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {

            Spacer()

            ZStack {
                Hexagon()
                    .fill(.yellow)
                    .rotationEffect(.degrees(10))
                    .frame(height: 100)
                Hexagon()
                    .fill(.green)
                    .frame(height: 100)
                Hexagon()
                    .fill(.blue)
                    .rotationEffect(.degrees(-10))
                    .frame(height: 100)
                    .overlay {
                        Text("Hello world!")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                            .rotationEffect(.degrees(-10))
                    }
            }
            
            Spacer()

            ZStack {
                Hexagon()
                    .fill(.yellow)
                    .frame(height: 100)
                    .offset(x: 10, y: 20)
                Hexagon()
                    .fill(.green)
                    .frame(height: 100)
                    .offset(x: 5, y: 10)
                Hexagon()
                    .fill(.blue)
                    .frame(height: 100)
                    .overlay {
                        Text("Hello world!")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                    }

            }
            
            Spacer()

        }
        .padding()
    }
}

#Preview {
    ExampleView()
}
