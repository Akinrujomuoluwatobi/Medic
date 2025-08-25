//
//  SearchBarView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 25/08/2025.
//


import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search a Doctor", text: $searchText)
            Image(systemName: "microphone")
        }
        .padding()
        .background(.colorGray).opacity(0.3)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#Preview {
    @Previewable @State var searchText = ""
    SearchBarView(searchText: $searchText)
}
