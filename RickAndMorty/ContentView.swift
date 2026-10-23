//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isRotating = false
    @State private var isPulsing = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "atom")
                            .font(.system(size: 80))
                            .foregroundStyle(.green)
                            .rotationEffect(.degrees(isRotating ? 360 : 0))
                            .scaleEffect(isPulsing ? 1.1 : 0.9)
                            .onAppear {
                                withAnimation(
                                    .linear(duration: 4)
                                        .repeatForever(autoreverses: false)
                                ) {
                                    isRotating = true
                                }

                                withAnimation(
                                    .easeInOut(duration: 1)
                                        .repeatForever(autoreverses: true)
                                ) {
                                    isPulsing = true
                                }
                            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}

#Preview {
    ContentView()
}
