//
//  UserStatView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 13.07.2025.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.subheadline)
        }
        .frame(width: 76)    }
}

#Preview {
    UserStatView(value: 15, title: "Posts")
}
