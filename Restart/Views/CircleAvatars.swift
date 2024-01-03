//
//  CircleAvatars.swift
//  Restart
//
//  Created by Alex Maina on 03/01/2024.
//

import SwiftUI

struct CircleAvatars: View {
    @State private var isAnimating: Bool = false;
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.green.opacity(0.15), lineWidth: 40)
                .frame(width: 250, height: 250, alignment: .center)
            Circle()
                .stroke(.green.opacity(0.3), lineWidth: 80)
                .frame(width: 250, height: 250, alignment: .center)
        }
        .blur(radius: isAnimating ? 0 : 1)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true;
        })
    }
}

struct CircleAvatars_Previews: PreviewProvider {
    static var previews: some View {
        CircleAvatars()
    }
}
