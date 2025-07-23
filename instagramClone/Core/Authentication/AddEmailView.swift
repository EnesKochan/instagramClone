//
//  AddEmailView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 23.07.2025.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                Spacer()
                Text("Add your email")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ButtonTextColor"))
                Text("You will use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())

                
                NavigationLink{
                    //                    Username Sayfasına Yönlendirme

                    CreateUserNameView()                            .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("ButtonTextColor"))
                        .frame(width: 345, height: 20)
                    
                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .overlay(RoundedRectangle(cornerRadius: 6)
                    .stroke(Color("ButtonTextColor"), lineWidth:  1)
                )
                .padding(.horizontal, 24)
                
                Spacer()
                
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                    
                    
                }
            }
        }
    }
}

#Preview {
    AddEmailView()
}
