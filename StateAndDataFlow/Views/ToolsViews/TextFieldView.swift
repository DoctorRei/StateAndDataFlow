//
//  TextFieldView.swift
//  StateAndDataFlow
//
//  Created by Акира on 16.10.2023.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var name: String
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, height: 50, alignment: .center)
                TextView(currentText: $name)
                    .frame(width: 50, height: 50, alignment: .leading)
            }
        }
    }
    
    struct TextFieldView_Previews: PreviewProvider {
        static var previews: some View {
            TextFieldView(name: .constant("Hel"))
        }
    }
}
