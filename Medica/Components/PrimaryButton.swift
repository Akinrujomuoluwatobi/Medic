//
//  PrimaryButton.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 20/08/2025.
//

import SwiftUI

struct PrimaryButton: View {
    var label: String
    var cornerRadius: CGFloat = 12
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(label)
                .foregroundStyle(.colorWhite)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(.colorPrimary)
                        
                }
            
        }
    }
}

#Preview {
    PrimaryButton(label: "Hello", action: {
        
    })
}
