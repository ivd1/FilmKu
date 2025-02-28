//
//  VerticalMovieListView.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 27.02.2025.
//

import SwiftUI

struct VerticalMovieListView: View {
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
                    // button action
                }
                .font(.subheadline)
                .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            
            LazyVStack(spacing: 15) {
                ForEach(movieList) { movie in
                    NavigationLink(destination: MovieDetailsView(movie: movie)) {
                        HStack(spacing: 10) {
                            Image(movie.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .shadow(radius: 3)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(movie.title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                HStack(spacing: 4) {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text(movie.rating)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                
                                MovieGenresView(genres: movie.movieGenres)
                                HStack {
                                    Image(systemName: "timer")
                                        .imageScale(.small)
                                    Text(movie.length)
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}


#Preview {
    VerticalMovieListView(title: "Popular Movies", movieList: MovieModel.mockData)
}
