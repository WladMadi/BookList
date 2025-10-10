//
//  ContentView.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import SwiftUI

struct BookListView: View {
    @Environment(BookListViewModel.self) var viewModel
    @State private var showAddBookForm = false

    var body: some View {
        NavigationStack {
            List(viewModel.books) { book in
                NavigationLink(value: book) {
                    Text(book.title)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button {
                                viewModel.deleteBook(book)
                            } label: {
                                Image(systemName: "trash")
                            }
                            .tint(.red)
                        }
                }
            }
            .navigationDestination(for: Book.self) {
                book in BookView()
            }
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                    }
                }
                ToolbarItem {
                    Button {
                        showAddBookForm = true
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            .blur(radius: showAddBookForm ? 10 : 0)
            .overlay {
                AddBookForm {
                    showAddBookForm = false
                    viewModel.fetchBooks()
                }
                .environment(viewModel)
                .offset(y : showAddBookForm ? 0 : 1000)
            }
            .animation(.easeInOut, value: showAddBookForm)
        }
    }
}
