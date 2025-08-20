//
//  TextField.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 20/08/2025.
//

import SwiftUI

struct InputField: View {
    @Binding var textFIeldValue: String
    var body: some View {
        TextField(text: $textFIeldValue) {
            Text("Enter your Email")
                
        }.padding()
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.textFieldFill.opacity(0.3))
                    .stroke(Color.textFieldStroke)
            }
    }
}

#Preview {
    @Previewable @State var text = ""
    InputField(textFIeldValue: $text)
}
