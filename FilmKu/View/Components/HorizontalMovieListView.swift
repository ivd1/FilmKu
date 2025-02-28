//
//  HorizontalMovieListView.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 27.02.2025.
//

import SwiftUI

struct HorizontalMovieListView: View {
    let title: String
    let movieList: [MovieModel]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Button("See more") {
                    
                }
                .font(.subheadline)
                .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(movieList) { movie in
                        NavigationLink(destination: MovieDetailsView(movie: movie)) {
                            VStack(spacing: 10) {
                                Image(movie.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 180)
                                    .cornerRadius(5)
                                
                                VStack(spacing: 5) {
                                    Text(movie.title)
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                    HStack(spacing: 5) {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                        Text(String(movie.rating))
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HorizontalMovieListView(title: "Now Showing", movieList: MovieModel.mockData)
}
