//
//  MovieDetailsViewModel.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 28.02.2025.
//

import Foundation

class MovieDetailsViewModel: ObservableObject {
    var movie: MovieModel
    
    init(movie: MovieModel) {
        self.movie = movie
    }
    
    func play(_ movie: MovieModel) {
        // play video file
    }
    
    func saveFavorite(_ movie: MovieModel) {
        // save favorite movie
    }
    
}
