//
//  LoginView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 23.07.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
            NavigationStack {
                Spacer()
            Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                VStack(spacing:12){
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureFieldWithButton("Enter Your Password", text: $password)

                }
                NavigationLink{
                    AddEmailView()
                        .navigationBarBackButtonHidden()

                } label: {
                    Text("Login")
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
                .padding(.top, 12)
                Button{
                    print("FORGET PASSWORD")
                } label: {
                    Text("Forget Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.trailing, 24)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                HStack{
                    Rectangle()
                        .frame(height:0.5)
                    Text("OR")
                    Rectangle()
                        .frame(height:0.5)
                }
                .padding(.horizontal,24)
                .foregroundStyle(.gray)
                
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Contunue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                        
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
//                    Email Sayfasına Yönlendirme
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                    Text("Sign Up")
                }label: {
                    HStack{
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            
                    }
                }
                .padding(.vertical, 16)
        }
        
    }
}

#Preview {
    LoginView()
}
