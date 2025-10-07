//
//  HomeLibraryApp.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import SwiftUI
import SwiftData

@main
struct HomeLibraryApp: App {
    let dataService: DataService
    let viewModel: BookListViewModel
    
    init() {
        let container = try! ModelContainer(for: Book.self, Genre.self, BookReview.self)
        self.dataService = SwiftDataService(modelContainer: container)
        self.viewModel = BookListViewModel(dataService: dataService)
    }
    
    var body: some Scene {
        WindowGroup {
            BookListView()
                .environment(viewModel)
        }
    }
}
