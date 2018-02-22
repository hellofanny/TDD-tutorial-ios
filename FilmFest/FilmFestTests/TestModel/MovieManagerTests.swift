//
//  MovieManagerTests.swift
//  FilmFestTests
//
//  Created by Fanny Chien on 22/02/18.
//  Copyright © 2018 Funnyfanny. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieManagerTests: XCTestCase {
    
    var sut: MovieManager!
    
    override func setUp() {
        super.setUp()
        sut = MovieManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testMoviesToSeeCount_returnsZero(){
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testMoviesSeenCount_returnsZero(){
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    func testMovieToSeeCount_shouldBeOneAfterMovieAdded(){
        sut.addMovieToLibrary(movie: Movie(title: "A walk to remember"))
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testMovieAtIndex_returnsLastAddedMovie(){
        let movie = Movie(title: "Almost 30")
        sut.addMovieToLibrary(movie: movie)
        
        let returnedMovieAtIndex = sut.movieAtIndex(index: 0)
        XCTAssertEqual(movie.title, returnedMovieAtIndex.title)
    }
    
    func testFavoriteMovie_updatesMoviesSeenAndMoviesTooSeeCounts(){
        sut.addMovieToLibrary(movie: Movie(title: "Fun Comedy"))
        sut.favoriteMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testFavoriteMovie_shouldRemoveMovieFromMoviesToSeeArray(){
        let movie1 = Movie(title: "Fun Comedy")
        let movie2 = Movie(title: "Hello World")
        
        sut.addMovieToLibrary(movie: movie1)
        sut.addMovieToLibrary(movie: movie2)
        sut.favoriteMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, movie2.title)
    }
    
    func testFavoriteMovieAtIndex_shouldReturnFavoritedMovie(){
        let movie = Movie(title: "Black Suit")
        sut.addMovieToLibrary(movie: movie)
        sut.favoriteMovieAtIndex(index: 0)
        let returnedMovie = sut.favoritedMovieAtIndex(index: 0)
        
        XCTAssertEqual(movie.title, returnedMovie.title)
        
    }
    
    func testClearAllArrayItems_shouldReturnArrayCountsOfZero(){
        sut.addMovieToLibrary(movie: Movie(title: "Thriller"))
        sut.addMovieToLibrary(movie: Movie(title: "Comdey"))
        sut.favoriteMovieAtIndex(index: 0)

        XCTAssertEqual(sut.moviesToSeeCount, 1)
        XCTAssertEqual(sut.moviesSeenCount, 1)
        
        sut.clearArrays()
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
        
    }

    
}
