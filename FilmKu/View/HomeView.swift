//
//  HomeView.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 27.02.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        @StateObject var viewModel = HomeViewModel()
        
        ScrollView(showsIndicators: false) {
            VStack(spacing: 15) {
                HorizontalMovieListView(title: "Now Showing", movieList: viewModel.mockMovies)
                VerticalMovieListView(title: "Popular", movieList: viewModel.randomMockMovies)
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
