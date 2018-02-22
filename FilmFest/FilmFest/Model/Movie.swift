//
//  Movie.swift
//  FilmFest
//
//  Created by Fanny Chien on 22/02/18.
//  Copyright © 2018 Funnyfanny. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static func ==(lhs: Movie, rhs: Movie) -> Bool {
        
        if lhs.title != rhs.title {
            return false
        }
        
        if lhs.releaseDate != rhs.releaseDate{
            return false
        }
        return true
    }
    
}
