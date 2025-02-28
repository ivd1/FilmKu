//
//  MovieDetailsView.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 26.02.2025.
//

import SwiftUI

struct MovieDetailsView: View {
    @StateObject var viewModel: MovieDetailsViewModel
    
    init(movie: MovieModel) {
        _viewModel = StateObject(wrappedValue: MovieDetailsViewModel(movie: movie))
    }

    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: -15) {
                // Top image portion
                ZStack {
                    Image(viewModel.movie.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .clipped()
                    Button(action: {
                        viewModel.play(viewModel.movie)
                    }) {
                        VStack {
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                            Text("Play Trailer")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.bold)
                        }
                    }
                }
                .frame(height: 300)
                
                // Movie details
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(viewModel.movie.title)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            
                            HStack(spacing: 12) {
                                HStack(spacing: 5) {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text(viewModel.movie.rating)
                                }
                            }
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Button {
                            viewModel.saveFavorite(viewModel.movie)
                        } label: {
                            Image(systemName: "bookmark")
                                .resizable()
                                .frame(width: 20, height: 24)
                                .foregroundColor(.primary)
                        }
                    }
                    
                    MovieGenresView(genres: viewModel.movie.movieGenres)
                    
                    HStack(spacing: 50) {
                        VStack {
                            Text("Length")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Text(viewModel.movie.length)
                                .font(.footnote)
                        }
                        VStack {
                            Text("Language")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Text("English")
                                .font(.footnote)
                        }
                        VStack {
                            Text("Rating")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Text("PG-13")
                                .font(.footnote)
                        }
                    }
                    
                    Text("Description")
                        .font(.headline)
                    Text("With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text("Cast")
                                .font(.headline)
                            Spacer()
                            Button("See more") {
                                //button action
                            }
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(MovieModel.mockActors, id: \.self) { actor in
                                    VStack(spacing: 10) {
                                        Image(systemName: "person.circle")
                                            .resizable()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(.gray)
                                        Text(actor)
                                            .font(.caption2)
                                            .foregroundColor(.black)
                                            .frame(maxWidth: 80)
                                            .frame(height: 35, alignment: .topLeading)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
        }
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    // button action
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .font(.title2)
                }
            }
        }
    }
}

#Preview {
    MovieDetailsView(movie: MovieModel.mockData[4])
}
