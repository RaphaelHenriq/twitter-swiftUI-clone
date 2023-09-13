//
//  SideMenuRowView.swift
//  TwitterSwiftUIClone
//
//  Created by Raphael Henrique on 06/09/23.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    
    private let viewModel: SideMenuViewModel
    
    init(viewModel: SideMenuViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
