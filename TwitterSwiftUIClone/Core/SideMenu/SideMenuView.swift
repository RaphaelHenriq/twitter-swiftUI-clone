//
//  SideMenuView.swift
//  TwitterSwiftUIClone
//
//  Created by Raphael Henrique on 06/09/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        print("Logout")
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
                
            }
            Spacer()
        }
    }
}

#Preview {
    SideMenuView()
}
