//
//  ButtonViewText.swift
//  StateAndDataFlow
//
//  Created by Акира on 15.10.2023.
//

import SwiftUI

struct ButtonViewText: View {
    
    @State var buttonState = true
    
    var textTest: String
    
    var body: some View {
        
        Text(textTest)
    }
}

func buttonEnabled() {
    
}

func buttonDisabled() {
    
}




struct ButtonViewText_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewText(textTest: "")
    }
}
