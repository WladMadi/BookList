//
//  SwiftDataService.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation
import SwiftData

protocol DataService {
    func fetchAllBooks() -> [Book]
    func addBook(_ title: String, author: String, year: Int, genre: Genre?)
    func deleteBook(_ book: Book)
//    func fetchGenres() -> [Genre]
//    func addGenre(_ name: String)
//    func addNewReview(for book: Book, text: String, rating: Int)
}

class SwiftDataService: DataService {
    private let modelContainer: ModelContainer // База данных
    private let modelContext: ModelContext //"Оперативная память БД"
    
    init(modelContainer: ModelContainer) {
        self.modelContainer = modelContainer
        self.modelContext = ModelContext(modelContainer)
    }

    //MARK: - CRUD-операции с BOOK
    //Create
    func addBook(_ title: String, author: String, year: Int, genre: Genre?) {
        let book = Book(title: title, author: author, year: year, genre: genre)
        modelContext.insert(book)
        try? modelContext.save()
    }
    
    //Retrieve
    func fetchAllBooks() -> [Book] {
        //FetchDescriptor - это "описатель" получения
        //SortDescriptor - это описатель сортировки
        let descriptor = FetchDescriptor<Book>(sortBy: [SortDescriptor(\.title)])
        let books = try? modelContext.fetch(descriptor)
        return books ?? []
    }
    
    //Delete
    func deleteBook(_ book: Book) {
        modelContext.delete(book)
        try? modelContext.save()
    }
    
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

