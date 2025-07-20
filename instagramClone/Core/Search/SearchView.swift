//
//  SearchView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 21.07.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self){user in
                        HStack{
                            Image("ben")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipped()
                                .clipShape(Circle())
                            VStack(alignment: .leading){
                                Text("eneskochann")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                
                                Text("Enes Ömer Koçhan")
                                    .font(.footnote)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
