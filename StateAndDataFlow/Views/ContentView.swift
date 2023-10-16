//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Private values
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userSettings: UserSettings
    
    //MARK: - Content
    
    var body: some View {
        VStack {
            Text("Hi, \(userSettings.username)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            
            TimeButtonView(timer: timer)
            LogOutButtonView()
            
            Spacer()
        }
        .padding()
    }
}

//MARK: - Canvas

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}
