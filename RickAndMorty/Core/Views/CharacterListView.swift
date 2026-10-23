//
//  CharacterListView.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import SwiftUI

struct CharacterListView: View {
    
    @State var viewmodel = CharacterViewModel()
    @State var searchText = ""
    
    var body: some View {
        
        NavigationStack{
            Group{
                switch viewmodel.status{
                case .idle:
                    ContentView()
                case .loading:
                    ContentView()  
                case .loaded(let character):
                    
                        List(character.results){ character in
                            NavigationLink(value: character){
                                CharacterView(character: character)
                         }
                    }
                case .empty:
                    ContentUnavailableView.search(text: searchText)
                    
                case .error(let error):
                   ContentUnavailableView(
                      "Something went wrong",
                      systemImage: "exclamationmark.triangle",
                      description: Text(error)
                   )
                }
                
            }
            .navigationTitle("Characters")
            .navigationDestination(for: characterResult.self){ character in
                CharacterDetailView(character: character)
            }
            .searchable(text: $searchText, prompt: "Search by name")
            
        }
        .task(id: searchText) {
            do{
                if !searchText.isEmpty{
                    try await Task.sleep(for: .microseconds(400))
                }
                try await viewmodel.fetchAPI(searchText: searchText)
            }
            catch{
                
            }
        }
        
    }
}
  

#Preview {
    CharacterListView()
}
