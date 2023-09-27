//
//  CustomInputField.swift
//  TwitterSwiftUIClone
//
//  Created by Raphael Henrique on 27/09/23.
//

import SwiftUI

struct CustomInputField: View {
    private let imageName: String
    private let placeholderText: String
    @Binding private var text: String
    
    init(imageName: String, placeholderText: String, text: Binding<String>) {
        self.imageName = imageName
        self.placeholderText = placeholderText
        self._text = text
    }
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholderText, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    CustomInputField(
        imageName: "envelope",
        placeholderText: "Email",
        text: .constant("")
    )
}
