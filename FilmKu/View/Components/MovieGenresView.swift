//
//  MovieGenresView.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 28.02.2025.
//

import SwiftUI

struct MovieGenresView: View {
    let genres: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(genres, id: \.self) { genre in
                    Text(genre)
                        .font(.caption)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .foregroundStyle(.blue)
                        .background(.blue.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    MovieGenresView(genres: MovieModel.mockData[0].movieGenres)
}
