//
//  TextField.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 20/08/2025.
//

import SwiftUI

struct InputField: View {
    @Binding var textFIeldValue: String
    var placeholderText: String
    var keyboardType: UIKeyboardType = .alphabet
    
    var body: some View {
        TextField(text: $textFIeldValue) {
            Text(placeholderText)
            
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.textFieldFill.opacity(0.3))
                .stroke(Color.textFieldStroke)
        }
        .padding(2)
    }
}

#Preview {
    @Previewable @State var text = ""
    InputField(textFIeldValue: $text, placeholderText: "Hello")
}
