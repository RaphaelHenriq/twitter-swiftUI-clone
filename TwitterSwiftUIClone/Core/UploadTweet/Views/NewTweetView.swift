//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Raphael Henrique on 19/09/23.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption: String = ""
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack {
            navigationView
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea(text: $caption, placeholder: "What's happen?")
            }
            .padding()
        }
    }
}

#Preview {
    NewTweetView()
}

extension NewTweetView {
    private var navigationView: some View {
        HStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Cancel")
            }
            
            Spacer()
            
            Button {
                print("Tweet")
            } label: {
                Text("Tweet")
                    .bold()
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
        }
        .padding()
    }
}
