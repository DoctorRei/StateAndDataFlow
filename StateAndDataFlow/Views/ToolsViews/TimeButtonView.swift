//
//  TimeButtonView.swift
//  StateAndDataFlow
//
//  Created by Акира on 16.10.2023.
//

import SwiftUI

struct TimeButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
