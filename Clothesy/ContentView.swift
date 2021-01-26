//
//  ContentView.swift
//  Clothesy
//
//  Created by Daval Cato on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var signInWithAppleManager: SignInWithAppleManager
    
    var body: some View {
        if signInWithAppleManager.isUserAuthenticated == .undefined {
            return LaunchScreenView()
            
        } else if signInWithAppleManager.isUserAuthenticated == .signedOut {
            
            return LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
