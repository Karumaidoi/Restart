//
//  ContentView.swift
//  Restart
//
//  Created by Alex Maina on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    // Simillar to shared preferences storage [Flutter]
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true;
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnBoardingView()
            } else {
                HomeView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
