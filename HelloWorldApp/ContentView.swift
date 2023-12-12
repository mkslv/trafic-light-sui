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
    }
    
    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(.red)
                .frame(width: 150, height: 150)
                .shadow(color: .red, radius: 40, x: -30, y: 10)
                .opacity( selectedColor == .red ? 1.0 : 0.2)
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            Circle()
                .foregroundStyle(.yellow)
                .frame(width: 150, height: 150)
                .shadow(color: .yellow, radius: 40, x: -30, y: 10)
                .opacity( selectedColor == .yellow ? 1.0 : 0.2)
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            Circle()
                .foregroundStyle(.green)
                .frame(width: 150, height: 150)
                .shadow(color: .green, radius: 40, x: -30, y: 10)
                .opacity( selectedColor == .green ? 1.0 : 0.2)
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
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

#Preview {
    ContentView()
}
