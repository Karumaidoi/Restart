//
//  HomeView.swift
//  Restart
//
//  Created by Alex Maina on 03/01/2024.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = false;
    @State private var isAnimating: Bool = false;
    var body: some View {
        VStack(spacing: 20) {
            
            // MARK: - HEADER
            Spacer()
            
            ZStack {
                CircleAvatars()
                    
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(.easeOut(duration:4).repeatForever(), value: isAnimating)
                    
            }
            
            
            // MARK: - SECTION
            Text("""
            The time that leds to the mastery is dependent in the intensity of our focus
            """)
            .font(.title3)
            .fontWeight(.light)
            .italic()
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
            .padding()
            
            Spacer()
            
            // MARK: - FOOTER
            Button {
                isOnboardingViewActive = true;
                playSound(sound: "success", type: "m4a")
            } label: {
                 Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 30)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                isAnimating = true;
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
