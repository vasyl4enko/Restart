 //
//  ContentView.swift
//  restart
//
//  Created by Oleksandr on 28.06.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var onboardingIsActive: Bool = true
    var body: some View {
        ZStack {
            if onboardingIsActive {
                OnboardingView()
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
