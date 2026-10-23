//
//  Character.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import Foundation

struct Character : Decodable {
    let results : [characterResult]
}

struct characterResult : Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    let episode: [String]

}
