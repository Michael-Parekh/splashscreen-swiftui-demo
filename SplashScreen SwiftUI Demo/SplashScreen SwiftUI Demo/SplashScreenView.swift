//
//  SplashScreenView.swift
//  SplashScreen SwiftUI Demo
//
//  Created by Michael Parekh on 1/21/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    // These state variables are used for the SplashScreen animations.
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            // Show the ContentView once the animation finishes.
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "hare.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.pink)
                    Text("Hopper")
                        .font(.system(size: 26))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    // When this view appears, we want to increase the 'size' and 'opacity' state.
                    // When a State variable associated with a SwiftUI view changes, SwiftUI automatically updates the view to reflect the new state.
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                // Run the animation for 2 seconds and then show the ContentView.
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    // Updating the State with animation will ensure that the transition to ContentView is smooth.
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
