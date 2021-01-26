//
//  SignInWithAppleButton.swift
//  SwiftUISignInWithApple
//

import SwiftUI
import AuthenticationServices

final class SignInWithAppleButton: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<SignInWithAppleButton>) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton()
    }
    
    func updateUIView(_ uiView: SignInWithAppleButton.UIViewType, context: UIViewRepresentableContext<SignInWithAppleButton>) {
    }
}
