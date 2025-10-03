//
//  UserDefaultsService.swift
//  HomeLibrary
//
//  Created by Влад Мади on 03.10.2025.
//

import Foundation

class UDService {
    static let shared = UDService(); private init() {}
    private let storage = UserDefaults.standard
    //В UD данные хранятся в виде пар ключ-значение
    private let nameKey = "name"
    private let ageKey = "age"
    
    func saveName(_ name: String) { storage.set(name, forKey: nameKey) }
    func getName() -> String { storage.string(forKey: nameKey) ?? "Не задано" }
    
    func saveAge(_ age: Int) { storage.set(age, forKey: ageKey) }
    func getAge() -> Int { storage.integer(forKey: ageKey) }
    
}
