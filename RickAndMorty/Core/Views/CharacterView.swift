//
//  CharacterView.swift
//  RickAndMorty
//
//  Created by Mohammad Farooq on 22/10/26.
//

import SwiftUI

struct CharacterView: View {
    
    let character : characterResult
    
    var body: some View {
        HStack{
            
            AsyncImage(url: URL(string: character.image)){ image in
                image.resizable()
                    .scaledToFit()
            }
            
            placeholder: {
                ProgressView()
            }
            .frame(maxHeight: 70)
            .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(character.name)
                    .bold()
                
                Text("Total episode: \(character.episode.count)")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                
            }
            
        }
    }
}



#Preview {
    List { CharacterView(character: characterResult(
        id: 1,
        name: "Rick Sanchez",
        status: "Dead",
        species: "Alien",
        gender: "Male",
        image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
        episode: []
      )) }
    
}
