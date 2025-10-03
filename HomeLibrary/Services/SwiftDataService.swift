//
//  SwiftDataService.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation
import SwiftData

protocol DataService {
//    func fetchBooks() -> [Book]
//    func addBook(_ title: String, author: String, year: Int, genre: Genre?)
//    func deleteBook(_ book: Book)
//    func fetchGenres() -> [Genre]
//    func addGenre(_ name: String)
//    func addNewReview(for book: Book, text: String, rating: Int)
}

class SwiftDataService: DataService {
    
    private let modelContaner: ModelContainer // База данных
    private let modelContext: ModelContext //"Оперативная память БД"
    
    init(modelContaner: ModelContainer) {
        self.modelContaner = modelContaner
        self.modelContext = ModelContext(modelContaner)
    }

//    func fetchBooks() -> [Book] {
//        
//    }
//    
//    func addBook(_ title: String, author: String, year: Int, genre: Genre?) {
//        
//    }
//    
//    func deleteBook(_ book: Book) {
//        
//    }
//    
//    func fetchGenres() -> [Genre] {
//        
//    }
//    
//    func addGenre(_ name: String) {
//        
//    }
//    
//    func addNewReview(for book: Book, text: String, rating: Int) {
//
//    }
}

