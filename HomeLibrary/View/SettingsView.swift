//
//  SettingsView.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import SwiftUI

struct SettingsView: View {
    @State var viewModel = SettingsViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Имя пользователя:").bold()
            TextField("Ваше имя", text: $viewModel.name)
                .padding(10)
                .background(.gray)
                .clipShape(.buttonBorder)
            Text("Возраст:").bold()
            TextField("Возраст", value: $viewModel.age, format: .number)
                .padding(10)
                .background(.gray)
                .clipShape(.buttonBorder)
            Button("Сохранить") {
                viewModel.saveUserData()
            }
            .font(.title3.bold())
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 32)
            Spacer()
        }.navigationTitle("Настройки")
            .navigationBarTitleDisplayMode(.large)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
        
    }
}

#Preview {
    SettingsView()
}
