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
                
                Group {
                    if name.count <= 2 {
                        Text("\(name.count)")
                            .frame(width: 50, height: 50, alignment: .leading)
                            .foregroundColor(.red)
                    } else {
                        Text("\(name.count)")
                            .frame(width: 50, height: 50, alignment: .leading)
                            .foregroundColor(.blue)
                    }
                }
                
            }
        }
    }
    
    struct TextFieldView_Previews: PreviewProvider {
        static var previews: some View {
            TextFieldView(name: .constant("Hello"))
        }
    }
}
