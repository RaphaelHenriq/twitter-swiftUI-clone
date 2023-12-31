//
//  UserRowView.swift
//  TwitterSwiftUIClone
//
//  Created by Raphael Henrique on 31/08/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(.black)
            
            VStack(alignment: .leading) {
                Text("joker")
                    .font(.subheadline).bold()
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    UserRowView()
}
