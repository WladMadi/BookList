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
    
    init(dataService: DataService) {
        self.dataService = dataService
    }
}
