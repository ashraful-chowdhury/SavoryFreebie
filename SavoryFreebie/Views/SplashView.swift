//
//  SplashView.swift
//  SavoryFreebie
//
//  Created by Mohammad Ashraful Haque Chowdhury on 6/6/24.
//

import SwiftUI

struct SplashView: View {
    @State var shouldShowSplash : Bool = true
    
    var body: some View {
        ZStack {
            if self.shouldShowSplash {
                Image("WelcomeScreenImage")
            } else {
                MainView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.shouldShowSplash = false
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
