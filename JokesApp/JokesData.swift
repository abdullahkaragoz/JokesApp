//
//  Untitled.swift
//  JokesApp
//
//  Created by Abdullah Karagöz on 23.11.2024.
//

import Foundation

// MARK: - Welcome
struct Welcome: Identifiable ,Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable ,Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
