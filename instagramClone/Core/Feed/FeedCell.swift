//
//  FeedCell.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 20.07.2025.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            
// Profil Fotoğrafı ve Kullanıcı Adı
            HStack{
                Image("ben")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("eneskochann")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("ButtonTextColor"))
                Spacer()
            }
            .padding(.leading, 8)
//            Post Görseli
            Image("ben")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipped()
                .clipShape(Rectangle())
//            Aksiyon BUtonları
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button{
                    
                }label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button{
                    
                }label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(Color("ButtonTextColor"))
//            Beğeni Sayısı ve Beğeni
            Text("300 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 3)
                
//            Açıklama Kısmı
            HStack{
                Text("eneskochann")
                    .fontWeight(.semibold)
                +
                Text("Merhaba, Instagram Clone uygulaması yapıyorum. Gayet iyi gidiyor.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(.leading, 10)
            Text("10 saat önce")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)

            
        }
    } 
}

#Preview {
    FeedCell()
}
