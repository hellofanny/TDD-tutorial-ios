//
//  MovieManager.swift
//  FilmFest
//
//  Created by Fanny Chien on 22/02/18.
//  Copyright © 2018 Funnyfanny. All rights reserved.
//

import Foundation   

class MovieManager{
    var moviesToSeeCount = 0
    let moviesSeenCount = 0
    private var moviesToSeeArray = [Movie]()
    
    func addMovieToLibrary(movie: Movie){
        self.moviesToSeeCount += 1
        self.moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie{
        return moviesToSeeArray[index]
    }
}
