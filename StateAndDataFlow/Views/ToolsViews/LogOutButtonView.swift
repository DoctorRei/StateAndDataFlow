//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Акира on 16.10.2023.
//

import SwiftUI

struct LogOutButtonView: View {
    
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        Button("LogOut", action: logout)
            .foregroundColor(.black)
            .frame(width: 200, height: 60)
            .background(.blue)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 4)
            )
    }
    
    private func logout() {
        userSettings.isLoggedIn.toggle()
        userSettings.username = ""
    }
    
}



struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
