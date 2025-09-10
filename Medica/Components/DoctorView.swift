//
//  DoctorView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 26/08/2025.
//

import SwiftUI

struct DoctorView: View {
    var bookButtonAction: (() -> ())?
    var body: some View {
            HStack (alignment: .bottom) {
                Image("doctorMale")
                    .resizable()
                    .padding(.leading)
                    .aspectRatio(contentMode: .fill)
                    .padding(.top)
                    .frame(width: 100)
                    .clipped()
                    .clipShape(.rect(cornerRadius: 10))
                
                VStack (alignment: .leading, spacing: 19){
                    HStack {
                        Text("Dr. Pawan")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .foregroundStyle(.colorPrimary)
                                .fontWeight(.bold)
                        }
                        
                    }
                    
                    Text("Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.")
                        .font(.caption)
                        .foregroundStyle(.colorGray)
                    
                    HStack {
                        PrimaryButton(label: "Book", cornerRadius: 30) {
                            bookButtonAction?()
                        }
                        
                        Spacer(minLength: 55)
                        Image(systemName: "star.fill")
                            .renderingMode(.template)
                            .foregroundStyle(.colorOrange)
                        
                        Text("5.0")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                    }
                }.padding()
            }
            .frame(height: 200)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.colorLightBlue).opacity(0.3)
            }
            .padding()
        }
}

#Preview {
    DoctorView()
}
