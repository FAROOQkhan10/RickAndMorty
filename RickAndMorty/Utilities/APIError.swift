//
//  APIError.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import Foundation

enum APIError : LocalizedError{

    case invalidURL
    case invalidResponse
    case noResults
    case decodingError(Error)
    case networkError(Error)
    
    var errorDescription: String?{
        
        switch self {
        case .invalidURL:
            return "The URL is invalid"
        case .invalidResponse:
            return "Invalid response from server"
        case .noResults:
             return "Nothing Found"
        case .decodingError(let error):
            return "Failed to decode response: \(error.localizedDescription)"
        case .networkError(let error):
            return "Network Error: \(error.localizedDescription)"
        }
        
    }
    
}
