//
//  LoginView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 20/08/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            ScrollView (showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Sign In")
                        .font(.system(.title, design: .serif, weight: .bold))
                    Spacer(minLength: 25)
                    Text("Korem ipsum dolor sit amet, consectetur adipiscing elit.")
                        .foregroundStyle(.colorGray)
                    
                    Spacer(minLength: 62)
                    Text("Email")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer(minLength: 18)

                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    LoginView(email: "")
}
