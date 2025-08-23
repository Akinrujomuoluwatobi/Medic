//
//  LogoWIthBorder.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 23/08/2025.
//

import SwiftUI

struct LogoWIthBorder: View {
    var logoName: String
    var body: some View {
        Image(logoName)
            .resizable()
            .frame(width: 40, height: 40)
            .background {
                Circle()
                    .stroke(.colorLight, lineWidth: 1)
                    .frame(width: 60, height: 60)

            }
        
    }
}

#Preview {
    LogoWIthBorder(logoName: "facebook")
}
