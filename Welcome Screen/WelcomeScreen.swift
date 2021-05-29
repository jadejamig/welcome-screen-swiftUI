//
//  WelcomeScreen.swift
//  Welcome Screen
//
//  Created by Anselm Jade Jamig on 5/30/21.
//

import SwiftUI

struct WelcomeScreen: View {
    @Binding var showWelcomeScreen: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text("Welcome to Apple Support")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 48)
            
            Spacer()
            
            VStack(spacing: 24) {
                FeatureCell(image: "text.badge.checkmark", title: "Self-Solve", subtitle: "Get helpful information to resolve your issue wherever you are.", color: .green)
                
                FeatureCell(image: "person.2.fill", title: "Get Support", subtitle: "Get help from a real person by phone, chat, and more.", color: .blue)
                
                FeatureCell(image: "calendar", title: "Schedule a Repair", subtitle: "Find a Genius Bar or Apple Service Provider near you.", color: .red)
            }
            .padding(.leading)
            
            Spacer()
            Spacer()
            
            Button(action: {self.showWelcomeScreen = false}) {
                HStack {
                    Spacer()
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                    Spacer()
                }
                    
            }
            .frame(height: 50)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
        .padding()
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(showWelcomeScreen: .constant(true))
    }
}
