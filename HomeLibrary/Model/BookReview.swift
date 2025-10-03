//
//  BookReview.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation
import SwiftData

@Model
final class BookReview {
    var text: String
    var rating: Int
    var date: Date
    var book: Book?
    
    init(text: String, rating: Int, date: Date, book: Book? = nil) {
        self.text = text
        self.rating = rating
        self.date = date
        self.book = book
    }
}

