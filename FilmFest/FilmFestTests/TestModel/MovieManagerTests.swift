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

    
}
