//
//  TextView.swift
//  StateAndDataFlow
//
//  Created by Акира on 15.10.2023.
//

import SwiftUI

struct TextView: View {
    
   @Binding var currentText: String
    
    var body: some View {
        
        Group {
            
            if currentText.count <= 3 {
                Text(currentText)
                    .foregroundColor(.red)
            } else {
                Text(currentText)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(currentText: .constant("Hello"))
    }
}
