//
//  ContentView.swift
//  ButtonAnimation
//
//  Created by Darin Williams on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed: Bool = false
    
    var body: some View {
        VStack{
            Text("Tap Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                    .scaleEffect(isPressed ? 1.5 : 1.0)
                    .animation(.easeOut(duration: 0.2), value:  isPressed)
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged {_ in isPressed = true
                            }
                            .onEnded {
                                _ in isPressed = false
                            }
                    )
                }
        }
    }

#Preview {
    ContentView()
}
