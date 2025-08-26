//
//  DoctorView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 26/08/2025.
//

import SwiftUI

struct DoctorView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack (alignment: .bottom) {
                Image("doctorMale")
                    .resizable()
                    .padding(.leading)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top)
                    .frame(width: geometry.size.width * 0.3)
                
                VStack (alignment: .leading){
                    HStack {
                        Text("Dr. Pawan")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .tint(.colorSecondary)
                                .fontWeight(.bold)
                        }
                        
                    }
                    
                    Text("Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.")
                        .font(.caption)
                        .foregroundStyle(.colorGray)
                    
                    PrimaryButton(label: "Book") {
                        
                    }
                }.padding()
            }
            .frame(height: 170)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.colorLightBlue).opacity(0.3)
            }
            .padding()
        }
    }
}

#Preview {
    DoctorView()
}
