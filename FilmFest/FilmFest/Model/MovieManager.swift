//
//  MovieManager.swift
//  FilmFest
//
//  Created by Fanny Chien on 22/02/18.
//  Copyright © 2018 Funnyfanny. All rights reserved.
//

import Foundation   

class MovieManager{
    var moviesToSeeCount: Int { return moviesToSeeArray.count }
    var moviesSeenCount: Int { return moviesSeenArray.count }
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovieToLibrary(movie: Movie){
        self.moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie{
        return self.moviesToSeeArray[index]
    }
    
    func favoriteMovieAtIndex(index: Int){
        guard index < self.moviesToSeeCount else {return}
        
        let favoriteMovie = self.moviesToSeeArray.remove(at: index)
        self.moviesSeenArray.append(favoriteMovie)
    }
    
    func favoritedMovieAtIndex(index: Int) -> Movie{
        return moviesSeenArray[index]
    }
    
    
}
