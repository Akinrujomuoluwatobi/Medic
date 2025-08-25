//
//  HomeView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 25/08/2025.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchedText: String = ""
    
    var body: some View {
        ScrollView {
            HStack (spacing: 10) {
                Image("doctorMale")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .scaledToFit()
                
                VStack (alignment: .leading) {
                    Text("Hi, Welcome Back,")
                        .foregroundStyle(.colorGray)
                    
                    Text("John Doe Willams")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
    
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("notificationsIcon")
                }
                
                
            }.padding()
            
            Spacer(minLength: 30)
            
            SearchBarView(searchText: $searchedText)
        }
        
        Spacer()
    }
}

#Preview {
    HomeView()
}
