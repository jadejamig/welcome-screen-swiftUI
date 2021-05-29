//
//  ContentView.swift
//  Welcome Screen
//
//  Created by Anselm Jade Jamig on 5/30/21.
//

import SwiftUI

struct ContentView: View {
    @State var showWelcomeScreen = true
    
    var body: some View {
        Button(action: {self.showWelcomeScreen = true}) {
            Text("Show welcome screen")
        }
        .sheet(isPresented: self.$showWelcomeScreen) {
            WelcomeScreen(showWelcomeScreen: self.$showWelcomeScreen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
