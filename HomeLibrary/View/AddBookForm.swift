//
//  AddBookForm.swift
//  HomeLibrary
//
//  Created by Влад Мади on 07.10.2025.
//

import SwiftUI

struct AddBookForm: View {
    @State private var title: String = ""
    @State private var author: String = ""
    @State private var year: Int?
    @Environment(BookListViewModel.self) var viewModel
    @State private var errorMessage: String?
    var action: () -> ()
    
    var body: some View {
        VStack(spacing: 14) {
            Text("Новая книга!")
                .font(.title2.bold())
                .padding(.bottom, 20)
            if let errorMessage {
                Text(errorMessage)
                    .foregroundStyle(.red)
            }
            TextField("Название книги", text: $title)
                .modifier(TextFieldMod())
            TextField("Автор книги", text: $author)
                .modifier(TextFieldMod())
            TextField("Год издания",
                      value: $year,
                      format: .number)
                .modifier(TextFieldMod())
                .keyboardType(.numberPad)
            Button("Сохранить") {
                guard !title.isEmpty,
                      !author.isEmpty else {
                    errorMessage = "Заполните все поля!"
                    return
                }
                guard let year else {
                    errorMessage = "Заполните все поля!"
                    return
                }
                viewModel.createBook(with: title,
                                     author: author,
                                     year: year)
                title.removeAll()
                author.removeAll()
                self.year = nil
                action()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.accentColor)
            }
            .foregroundStyle(.white)
            .padding(.top, 20)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(alignment: .topTrailing, content: {
            Button {
                title.removeAll()
                author.removeAll()
                self.year = nil
                action()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .frame(width: 40, height: 40)
                    .background(.red)
                    .clipShape(.circle)
                    .offset(x: 10, y: -10)
            }

        })
        .padding(.horizontal, 20)
        .onChange(of: title) { errorMessage = nil }
        .onChange(of: year) { errorMessage = nil }
        .onChange(of: author) { errorMessage = nil }
    }
}



#Preview {
    AddBookForm(action: {})
}
