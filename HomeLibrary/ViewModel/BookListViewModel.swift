//
//  BookListViewModel.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation

@Observable
class BookListViewModel {
    let dataService: DataService
    var books: [Book] = []
    
    init(dataService: DataService) {
        self.dataService = dataService
        fetchBooks()
    }
    
    func fetchBooks() {
        let books = dataService.fetchAllBooks()
        self.books = books
    }
    
    func createBook(with title: String, author: String, year: Int) {
        dataService.addBook(title, author: author, year: year, genre: nil)
    }
    
    func deleteBook(_ book: Book) {
        dataService.deleteBook(book)
        fetchBooks()
    }
}
