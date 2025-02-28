//
//  MovieModel.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 27.02.2025.
//

import Foundation
import UIKit

class MovieModel: Identifiable {
    
    // MARK: - Variables
    var id: String
    var title: String
    var rating: String
    var length: String
    var imageName: String
    var movieGenres: [String]
    
    internal init(id: String, title: String, rating: String, length: String, imageName: String, movieGenres: [String]) {
            self.id = id
            self.title = title
            self.rating = rating
            self.length = length
            self.imageName = imageName
            self.movieGenres = movieGenres
        }
    
}

extension MovieModel {
    static let mockData: [MovieModel] = [
        MovieModel(id: "1", title: "Spider-Man: No Way Home", rating: "9.1 IMDb", length: "1h 44m", imageName: "spiderman", movieGenres: ["Action", "Adventure", "Fantasy"]),
        MovieModel(id: "2", title: "Eternals", rating: "9.5 IMDb", length: "2h 03m", imageName: "eternals", movieGenres: ["Action", "Drama", "Sci-Fi"]),
        MovieModel(id: "3", title: "Despicable Me", rating: "7.6 IMDb", length: "1h 28m", imageName: "despicable", movieGenres: ["Animation", "Comedy", "Family"]),
        MovieModel(id: "4", title: "Money Man", rating: "8.7 IMDb", length: "1h 15m", imageName: "moneyman", movieGenres: ["Thriller", "Crime", "Drama"]),
        MovieModel(id: "5", title: "The Lord of the Rings: The Return of the King", rating: "9.0 IMDb", length: "3h 21m", imageName: "lordoftherings", movieGenres: ["Action", "Adventure", "Fantasy"])
    ]
    
    static let mockActors = ["Tom Holland", "Zendaya", "Benedict Cumberbatch", "Jacon Batalon"]
}
