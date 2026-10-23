//
//  CharacterViewModel.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import Foundation
import Observation

@Observable
final class CharacterViewModel{
    
    enum Status{
        case idle
        case empty
        case loading
        case loaded(Character)
        case error(String)
    }
    
    private(set) var status : Status = .idle
    
    
    private let service : APIProtocol
    
    init(service: APIProtocol = APIService()) {
        self.service = service
    }
    
    func fetchAPI(searchText: String) async {
        
        let name = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
        
        status = .loading
        
        do{
            let character = try await service.loadData(text: name)
            self.status = character.results.isEmpty ? .empty : .loaded(character)
        }
        catch APIError.noResults{
            status = .empty
        }
        catch let error as APIError{
            self.status = .error(error.errorDescription ?? "Unknown Error")
        }
        catch {
            self.status = .error("Network Error")
        }
    }
    
    
    
}
