//
//  HomeView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 25/08/2025.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchedText: String = ""
    
    var categories: [String] = ["Denteeth", "Therapist", "Surgeon", "Gynacologist", "General Nurse"]
    
    var body: some View {
        ScrollView {
            VStack {
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
                
                TabView {
                    ForEach(0..<4) { item in
                        MedicalCenterView()
                    }
                }.tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .frame(height: 170)
                    .background{
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.colorPrimary)
                    }
                    .padding()
                
                HStack {
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("See All")
                        .foregroundStyle(.colorGray)
                    
                }.padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 15) {
                        ForEach(categories, id: \.self) { item in
                            CategoryView(item: item)
                        }
                    }
                }.padding()
                
                HStack {
                    Text("All Doctors")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("See All")
                        .foregroundStyle(.colorGray)
                    
                }.padding()
                
                DoctorView()
            }.padding(.bottom, 50)
        }
    }
}

#Preview {
    HomeView()
}
