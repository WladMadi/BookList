//
//  BookViewModel.swift
//  HomeLibrary
//
//  Created by Ivashin Ivan on 10.10.2025.
//

import Foundation

@Observable
class BookViewModel {
    let dataService: DataService
    var book: Book
    var reviewText: String?
    var rating: Int?
    var date: Date?

    init(dataService: DataService, book: Book) {
        self.dataService = dataService
        self.book = book
    }


    func addReview() {
        dataService.addNewReview(for: book, text: reviewText ?? "", rating: rating ?? 0, date: date ?? Date())
    }

    func deleteReview() {
        dataService.deleteReview(for: book)
    }

}
