//
//  AllDoctorsView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 10/09/2025.
//

import SwiftUI

struct AllDoctorsView: View {
    
    @State var viewModel = AllDoctorViewModel()
    var body: some View {
        VStack {
            SearchBarView(searchText: $viewModel.searchText)
            
            ScrollView {
                ForEach(0..<10) { item in
                    DoctorView()
                }
            }
        }.navigationTitle("All Doctors")
    }
}

#Preview {
    AllDoctorsView()
}
