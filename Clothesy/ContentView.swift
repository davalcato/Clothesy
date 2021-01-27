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
        ZStack {
            if signInWithAppleManager.isUserAuthenticated == .undefined {
                 LaunchScreenView()
            }  else if signInWithAppleManager.isUserAuthenticated == .signedOut {
                 LoginView()
            }  else if signInWithAppleManager.isUserAuthenticated == .signedOut {
                 MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
