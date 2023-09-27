//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Raphael Henrique on 19/09/23.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption: String = ""
    
    var body: some View {
        VStack {
            navigationView
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea(text: $caption, placeholder: "What's happen?")
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}

extension NewTweetView {
    private var navigationView: some View {
        HStack {
            Button {
                print("cancel")
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
