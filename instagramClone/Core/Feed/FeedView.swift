//
//  FeedView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 20.07.2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self) { post  in
                        FeedCell()
                    }
                }
                
                .padding(.top, 5)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram")
                        .resizable()
                        .frame(width: 100, height: 32)
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName:  "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
