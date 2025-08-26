//
//  ProfileItemView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 26/08/2025.
//

import SwiftUI

struct ProfileItemView: View {
    var profileItem: ProfileContent
    var body: some View {
        HStack (spacing: 20) {
            Image(systemName: profileItem.imageSystemName)
                .foregroundStyle(.colorPrimary)
                .fontWeight(.bold)
                .font(.title2)
                .padding()
                .background {
                    Circle()
                        .fill(.colorLight)
                    
                }
            
            Text(profileItem.name)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.black)
            Spacer()
            
            if profileItem.isArrow {
                Image(systemName: "chevron.right")
                    .foregroundStyle(.colorGray)
                    .fontWeight(.medium)
            }
            
        }
    }
}
