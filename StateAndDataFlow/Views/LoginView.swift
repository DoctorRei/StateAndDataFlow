//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

struct LoginView: View {
    
    //MARK: - State values
    
    @State private var buttonState = true
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    
    //MARK: - Content
    
    var body: some View {
        VStack {
            HStack {
                TextFieldView(name: $name)
                    .onChange(of: name) { newValue in
                        switchButtonActivity(newValue: newValue)
                    }
            }
            
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(buttonState)
        }
        
    }
    
    //MARK: - Private Methods
    
    private func switchButtonActivity(newValue: String) {
        if newValue.count <= 2 {
            buttonState = true
        } else {
            buttonState = false
        }
    }
    
    private func login() {
        if !name.isEmpty {
            userSettings.username = name
            userSettings.isLoggedIn.toggle()
            
        }
    }
}

//MARK: - Canvas

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
