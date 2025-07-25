//
//  SecureFieldWithButton.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 23.07.2025.
//

import SwiftUI

struct SecureFieldWithButton: View {
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String,
           text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    
    var body: some View {
        ZStack(alignment: .trailing){
            Group{
                if isSecured{
                    SecureField(title, text: $text)
                        .modifier(IGTextFieldModifier())

                }else{
                    TextField(title, text: $text)
                        .modifier(IGTextFieldModifier())

                }
            }
            Button{
                isSecured.toggle()
            }label: {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .tint(.gray)
            }
            .padding(.trailing, 36)
        }
    }
}

#Preview {
    SecureFieldWithButton("Password", text: .constant(""))
}
