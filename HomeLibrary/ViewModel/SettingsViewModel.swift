//
//  SettingsViewModel.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation

@Observable
class SettingsViewModel {
    var name: String = ""
    var age: Int?
    
    init() {
        getUserData()
    }
    
    func getUserData() {
        let name = UDService.shared.getName()
        self.name = name
        
        let age = UDService.shared.getAge()
        self.age = age
    }
    
    func saveUserData() {
        UDService.shared.saveName(name)
        guard let age else { return }
        UDService.shared.saveAge(age)
    }
}
