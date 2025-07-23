//
//  CreateUserNameView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 23.07.2025.
//

import SwiftUI

struct CreateUserNameView: View {
    @State private var surname = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                Spacer()
                Text("Add your username")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ButtonTextColor"))
                Text("You will use this username to sign in to your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                TextField("Surname", text: $surname)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                
                NavigationLink{
                    
                    //                    Password Sayfasına Yönlendirme
                    CreatePasswordView()
                        .navigationBarBackButtonHidden()
                    
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
    CreatePasswordView()
}
