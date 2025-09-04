//
//  MedicalCenterView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 26/08/2025.
//

import SwiftUI

struct MedicalCenterView: View {
    var body: some View {
        ZStack() {
            ZStack {
                Image("doctorFemale")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipped()
                    .offset(x: 100, y: 30)
                    .padding()
                
                
                VStack (alignment: .leading) {
                    Text("Medical Center")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.colorWhite)
                        .lineLimit(1)
                    
                    Text("Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis ac aliquet odio mattis ac aliquet odio mattis.")
                        .foregroundStyle(.colorWhite)
                        .font(.caption)
                    
                }.padding()
                    .padding(.trailing, 100)
            }
        }
    }
}

#Preview {
    MedicalCenterView()
        .frame(height: 170)
        .background(.colorPrimary)
}

