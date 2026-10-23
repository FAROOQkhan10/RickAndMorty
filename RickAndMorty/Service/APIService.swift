//
//  APIService.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import Foundation

protocol APIProtocol {
    func loadData(text: String) async throws -> Character
}


class APIService : APIProtocol {
    

    func loadData(text: String) async throws -> Character {
        do{
            
            guard var components = URLComponents(string: Constants.baseURL) else {
                throw APIError.invalidURL
            }
            
            components.queryItems = !text.isEmpty ? [
                 URLQueryItem(name:"name", value: "\(text)")] : nil
            
            
            guard let url = components.url else{
                throw APIError.invalidURL
            }
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse else{
                throw APIError.invalidResponse
            }
            
            if httpResponse.statusCode == 404{
                throw APIError.noResults
            }
            
            guard (200..<300).contains(httpResponse.statusCode) else{
                throw APIError.invalidResponse
            }
            
            return try JSONDecoder().decode(Character.self, from: data)
            
        }
        catch let error as DecodingError{
            throw APIError.decodingError(error)
        }
        catch let error as URLError{
            throw APIError.networkError(error)
        }
    }
    
    
}
