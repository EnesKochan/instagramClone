//
//  ProfileView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 13.07.2025.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)

    ]
    var body: some View {
//        NavigationStack {
            ScrollView {
                VStack{
                    //            Header
                    VStack(spacing:10){
                        
                        //            Profil Kartı
                        HStack{
                            Image(user.profileImageUrl ?? "")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            HStack(spacing: 8){
                                UserStatView(value: 15, title: "Posts")
                                UserStatView(value: 15, title: "Followers")
                                UserStatView(value: 15, title: "Following")
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        //            İsim ve Açıklama
                        VStack(alignment: .leading, spacing:4){
                            
                            if let fullName = user.fullName{
                                Text(fullName)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                            }
                            
                            if let bio = user.bio {
                                Text(bio)
                                    .font(.footnote)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        //            Edit Profil
                        Button{
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 370, height: 32)
                                .foregroundStyle(Color("ButtonTextColor"))
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(.gray, lineWidth:  1)
                                         
                                )
                        }
                        
                        Divider()
                    }
                    
                    //            Posts
                    LazyVGrid(columns: gridItems, spacing: 1){
                        ForEach(1...16, id: \.self){index in
                            Image("ben")
                                .resizable()
                                .scaledToFill()
                        }
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            

        }
    }
//}

#Preview {
    ProfileView(user: User.MOCK_USER[0])
}
