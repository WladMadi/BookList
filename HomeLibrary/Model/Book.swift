//
//  Book.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation
import SwiftData

@Model
final class Book {
    var title: String
    var author: String
    var year: Int
    var genre: Genre?
    var review: BookReview?
    
    init(title: String, author: String, year: Int, genre: Genre? = nil, review: BookReview? = nil) {
        self.title = title
        self.author = author
        self.year = year
        self.genre = genre
        self.review = review
    }
}


