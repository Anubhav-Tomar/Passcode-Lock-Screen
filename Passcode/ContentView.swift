//
//  ContentView.swift
//  Passcode
//
//  Created by Anubhav Tomar on 24/08/24.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    
    @State private var isAuthenticated = false
    
    var body: some View {
        VStack {
            if isAuthenticated {
                Text("Welcome!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Onboard3DView()
                    .frame(height: 500)
                    .ignoresSafeArea()
                
                Button("Log out") {
                    isAuthenticated = false
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
            } else {
                PasscodeView(isAuthenticated: $isAuthenticated)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


struct Onboard3DView: View {
    var body: some View {
        let url = URL(string: "https://build.spline.design/hd-6762I3FUoVvPfMtsa/scene.splineswift")!
        SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}
