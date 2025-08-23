//
//  AnimatedSecureTextField.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 20/08/2025.
//
import SwiftUI

struct AnimatedSecureTextField: View {
    static let eyeIcon: String = "eye"
    static let eyeSlahIcon: String = eyeIcon + ".slash"
    
    @Binding var text: String
    @State var isSecure: Bool = true
    var titleKey: String
    var body: some View {
        ZStack(alignment: .trailing){
            if isSecure{
                SecureField(titleKey, text: $text)
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.textFieldFill.opacity(0.3))
                            .stroke(Color.textFieldStroke)
                    }
                
            }else{
                TextField(titleKey, text: $text)
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.textFieldFill.opacity(0.3))
                            .stroke(Color.textFieldStroke)
                    }
            }
            
            Button(action: {
                isSecure = !isSecure
            }, label: {
                Image(systemName: !isSecure ? AnimatedSecureTextField.eyeSlahIcon : AnimatedSecureTextField.eyeIcon)
                    .foregroundColor(.colorPrimary)
                    .padding()
            })
            
        }
        .padding(2)
        .animation(.easeInOut(duration: 0.3), value: isSecure)
    }
}

#Preview {
    @Previewable @State var passwordField: String = ""
    AnimatedSecureTextField(text: $passwordField, titleKey: "Password")
}
