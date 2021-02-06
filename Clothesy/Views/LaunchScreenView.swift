//
//  LaunchScreenView.swift
//  Clothesy
//
//  Created by Daval Cato on 1/26/21.
//

import SwiftUI
import AuthenticationServices


struct LaunchScreenView: View {
    
    @EnvironmentObject var signInWithAppleManager: SignInWithAppleManager
    
    @State private var signInWithappleDelegates: SignInWithAppleDelegates! = nil
    
    @State private var isAlertPresented = false
    @State private var errDescription = ""

    var body: some View {
        VStack {
            Text("Loading...")
        }.onAppear {
            self.signInWithAppleManager.checkUserAuth { (authState) in
                // Switch for the AuthState
                switch authState {
                case .undefined:
                    print("Auth State: .undefined")
                    self.performExistingAccountSetupFlows()
                case .signedOut:
                    print("Auth State: .signedOut")
                case .signedIn:
                    print("Auth State: .signedIn")
                }
            }
            
        }.alert(isPresented: $isAlertPresented) {
            Alert(title: Text("Error"), message:
                  Text(errDescription), dismissButton:
                    .default(Text("Ok"), action: {
                        // set isUserAuthenticated to signed out
            }))
        }
    }
    
    private func performExistingAccountSetupFlows() {
        
    }
    
    private func performSignIn(using request: [ASAuthorizationRequest]) {
        
        signInWithappleDelegates = SignInWithAppleDelegates
        
        let controller = ASAuthorizationController(authorizationRequests: requests)
        controller.delegate = SignInWithAppleDelegates
        controller.presentationContextProvider = SignInWithAppleDelegates
        
        controller.performRequests()
    }
}
    

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
