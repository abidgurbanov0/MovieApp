//
//  Genre.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import Foundation

// MARK: - Genre
struct Genre: Codable {
    let genres: [GenreElement]?
}

// MARK: - GenreElement
struct GenreElement: Codable {
    let id: Int?
    let name: String?
}
