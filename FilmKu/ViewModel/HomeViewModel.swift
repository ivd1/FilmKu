//
//  HomeViewModel.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 28.02.2025.
//

import Foundation

class HomeViewModel: ObservableObject {
    var mockMovies: [MovieModel] = []
    var randomMockMovies: [MovieModel] = []

    init() {
        fetchMovies()
    }

    func fetchMovies() {
        mockMovies = MovieModel.mockData
        randomMockMovies = MovieModel.mockData.shuffled()
    }
}
