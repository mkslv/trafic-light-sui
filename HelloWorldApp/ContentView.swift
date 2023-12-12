//
//  ContentView.swift
//  HelloWorldApp
//
//  Created by Max Kiselyov on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor: TraficLight? = nil
    
    enum TraficLight {
        case red, yellow, green
        
        var swiftUIColor: Color {
            switch self {
            case .red:
                return .red
            case .yellow:
                return .yellow
            case .green:
                return .green
            }
        }
    }
    
    var body: some View {
        VStack {
            trafficLightCircle(color: .red)
            trafficLightCircle(color: .yellow)
            trafficLightCircle(color: .green)
            Spacer()
            Button(action: {nextCollorButtonTapped()}, label: {
                Text("Next color")
                    .padding(20)
                    .foregroundStyle(.white)
                    .background(Color.gray)
                    .clipShape(.buttonBorder)
                    .shadow(radius: 10, x: 10, y: 10)
            })
        }
        .padding(.vertical, 40)
    }
}

// MARK: - Methods
extension ContentView {
    private func trafficLightCircle(color: TraficLight) -> some View {
        Circle()
            .foregroundStyle(color.swiftUIColor)
            .frame(width: 150, height: 150)
            .shadow(color: color.swiftUIColor, radius: 40, x: -30, y: 10)
            .opacity(selectedColor == color ? 1.0 : 0.2)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
    }
    
    private func nextCollorButtonTapped() {
        print(#function)
        if selectedColor == .red {
            selectedColor = .yellow
        } else if selectedColor == .yellow {
            selectedColor = .green
        } else {
            selectedColor = .red
        }
    }
}

// MARK: - TraficLightExtension
extension ContentView.TraficLight {
    
}

#Preview {
    ContentView()
}
