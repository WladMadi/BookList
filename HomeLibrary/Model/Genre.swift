//
//  Genre.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation
import SwiftData

@Model
final class Genre {
    var title: String
    @Relationship(deleteRule: .nullify) var books: [Book] = []
    
    init(title: String) {
        self.title = title
    }
}

