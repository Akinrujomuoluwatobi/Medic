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
            
            TabView {
                ForEach(0..<4) { item in
                    ZStack() {
                        
                        
                        HStack (alignment: .bottom) {
                            VStack (alignment: .leading) {
                                Text("Medical Center")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.colorWhite)
                                    .lineLimit(1)
                                
                                Text("Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.")
                                    .foregroundStyle(.colorWhite)
                                    .font(.caption)
                                    
                            }.padding()
                            
                            Image("doctorMale")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .scaledToFit()
                                .alignmen
                                
                        }
                    }
                }
            }.tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .frame(height: 170)
                .background{
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.colorPrimary)
                }
                .padding()
            
        }
        
        Spacer()
    }
}

#Preview {
    HomeView()
}
