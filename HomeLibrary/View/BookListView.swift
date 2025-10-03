//
//  ContentView.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import SwiftUI

struct BookListView: View {
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
