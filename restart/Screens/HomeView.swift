//
//  HomeView.swift
//  restart
//
//  Created by Oleksandr on 28.06.2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var onboardingIsActive: Bool = false
    var body:  some View {
        VStack(spacing: 20) {
            // MARK: Header
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding( )
            }
            // MARK: Center
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            // MARK: Footer
            
            Spacer()
            
            Button  {
                onboardingIsActive = true
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
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
