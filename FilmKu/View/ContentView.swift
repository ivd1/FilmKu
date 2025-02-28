//
//  ContentView.swift
//  FilmKu
//
//  Created by Daniel Ivanov on 25.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button {
                        // buton action
                    } label: {
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primary)
                    }
                    Spacer()
                    
                    Text("FilmKu")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Button {
                        //button action
                    } label: {
                        Image(systemName: "bell")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primary)
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 40)
            
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "film.circle")
                    }
                MovieDetailsView(movie: MovieModel.mockData[4])
                    .tabItem {
                        Image(systemName: "ticket")
                    }
                MovieDetailsView(movie: MovieModel.mockData[0])
                    .tabItem {
                        Image(systemName: "bookmark")
                    }
            }
            .tint(.gray)
        }
        .tint(.white)
        
    }
}

#Preview {
    ContentView()
}
