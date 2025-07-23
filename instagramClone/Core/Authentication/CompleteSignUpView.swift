//
//  CompleteSignUpView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 23.07.2025.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                Spacer()
                Text("Welcome to Insta..")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ButtonTextColor"))
                Text("Click below to complete registration and start usin g Insta")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                

                
                Button{
                    CreateUserNameView()
                        .navigationBarBackButtonHidden()
                    print("COMPLETE")
                    
                } label: {
                    Text("Complete sign up")
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
    CompleteSignUpView()
}
