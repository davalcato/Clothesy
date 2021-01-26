//
//  ProfileView.swift
//  Clothesy
//
//  Created by Daval Cato on 1/25/21.
//

import SwiftUI
import FirebaseAuth


struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Spacer()
            }.navigationBarTitle("Hi!")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
