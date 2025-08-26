//
//  CategoryView.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 26/08/2025.
//

import SwiftUI

struct CategoryView: View {
    var item: String
    var body: some View {
        Text(item)
            .padding(30)
            .foregroundStyle(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.colorSecondary)
                
            }
    }
}
