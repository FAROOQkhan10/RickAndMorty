
import SwiftUI

struct CharacterDetailView: View {
    
    let character: characterResult
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                
                AsyncImage(url: URL(string: character.image)){ image in
                    image
                        .resizable().scaledToFill()
                }placeholder: {
                    ProgressView()
                }
                .frame(maxWidth: .infinity)
                .frame(minHeight: 300)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                
                VStack(alignment: .leading, spacing: 6){
                    Text(character.name)
                        .font(.title)
                        .bold()
                    Text("Character Details")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                VStack{
                    
                    InfoRow(icon: "person.fill" , label: "Gender", value: character.gender)
                    Divider()
                    InfoRow(icon: "heart.circle" ,label: "Status", value: character.status, showStatus: true)
                    Divider()
                    InfoRow(icon: "atom" ,label: "Species", value: character.species)
                    
                }
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
            }
            .padding()
           
        
        }
        .navigationTitle(character.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }

}

fileprivate struct InfoRow : View {
    
    let icon : String
    let label: String
    let value: String
    var showStatus: Bool = false
    
    var body : some View {
        
        HStack{
            Image(systemName: icon)
                .foregroundStyle(.secondary)
            
            Text(label)
                .bold()
                .foregroundStyle(.secondary)
            
            Spacer(minLength: 10)
            
            if showStatus{
                Circle().fill(
                    value == "Alive" ? .green :
                        value == "Dead"  ? .red : .gray
                )
                .frame(width:8, height: 8)
            }
            
            Text(value)
     
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
}


#Preview {
    NavigationStack {
        CharacterDetailView(
            character: characterResult(
                id: 1,
                name: "Rick Sanchez",
                status: "Dead",
                species: "Alien",
                gender: "Male",
                image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                episode: []
            )
        )
    }
}
