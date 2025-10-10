//
//  BookView.swift
//  HomeLibrary
//
//  Created by Ivashin Ivan on 10.10.2025.
//

import SwiftUI

struct BookView: View {
    @Environment(BookViewModel.self) var viewModel

    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                Text("Автор: \(viewModel.book.author)")
                Text("Название: \(viewModel.book.title)")
                Text("Год: \(viewModel.book.year)")
                Text("Ревью: \(viewModel.book.review?.text ?? "")")
                Text("Рейтинг: \(viewModel.book.review?.rating ?? 0) ")

            }
        }
        .navigationTitle("Книга")
    }
}



