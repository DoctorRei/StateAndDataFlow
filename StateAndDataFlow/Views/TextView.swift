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
            Text("\(currentText.count <= 0 ? "" : "\(currentText.count)")")
                .foregroundColor( currentText.count <= 2 ? .red : .blue )
        }
    }
}

// Да, я решил поучиться использовать тернарный оператор. Результат хороший,
// но выглядит страшно


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(currentText: .constant("Hello"))
    }
}
