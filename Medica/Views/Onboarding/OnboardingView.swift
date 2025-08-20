//
//  OnboardingView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 20/08/2025.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                LoginView()
            } else {
                VStack {
                    Image("Medinova")
                    Text("Medica")
                        .foregroundStyle(.colorPrimary)
                        .fontWeight(.semibold)
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                    //.font(.system(.largeTitle, design: .rounded, weight: .semibold))
                    
                }
            }
            
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                withAnimation {
                    self.isActive.toggle()
                }
            })
        }
        
    }
}

#Preview {
    OnboardingView()
}
