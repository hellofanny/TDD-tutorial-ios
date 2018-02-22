//
//  MovieStructTests.swift
//  FilmFestTests
//
//  Created by Fanny Chien on 22/02/18.
//  Copyright © 2018 Funnyfanny. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieStructTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //whatAreYouTesting_expectedResult
    func testInit_setMovieTitle(){
        let movie = Movie(title: "Summer Times")
        XCTAssertEqual(movie.title, "Summer Times")
    }
    
    func testInit_setMovieTitleAndReleaseDate(){
        let movie = Movie(title: "Design Now", releaseDate: "01/12/2020")
        XCTAssertEqual(movie.releaseDate, "01/12/2020")
    }
    
}
