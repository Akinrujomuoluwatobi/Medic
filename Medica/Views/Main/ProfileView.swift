//
//  ProfileView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 25/08/2025.
//

import SwiftUI

struct ProfileView: View {
    
    var profileContents = ProfileContent.allCases
    
    var body: some View {
        ScrollView {
            Image("doctorMale")
                .resizable()
                .frame(width: 130, height: 130)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            Spacer(minLength: 30)
            
            Text("John Doe William")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
            ForEach(profileContents, id: \.self) { content in
                ProfileItemView(profileItem: content)
            }
            
        }.padding()
    }
}

#Preview {
    ProfileView()
}
