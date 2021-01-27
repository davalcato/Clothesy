//
//  LaunchScreenView.swift
//  Clothesy
//
//  Created by Daval Cato on 1/26/21.
//

import SwiftUI
import AuthenticationServices


struct LaunchScreenView: View {
    
    @State private var isAlertPresented = false
    @State private var errDescription = ""

    var body: some View {
        VStack {
            Text("Loading...")
            
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
