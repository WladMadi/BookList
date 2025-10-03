//
//  ContentView.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import SwiftUI

struct BookListView: View {
    @Environment(BookListViewModel.self) var viewModel
    
    var body: some View {
        NavigationStack {
            List {}
                .toolbar {
                    ToolbarItem {
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
}

#Preview {
    BookListView()
}
