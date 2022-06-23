import SwiftUI
 
struct pokemonModel: Identifiable {
    var id: Int
    let name: String
    let type: String
    let color: Color
    let imagename: String
}
 
struct Pokemon: View {
    @State var pokemonList = [
        pokemonModel(id: 0, name: "피카츄", type: "전기 포켓몬", color: .yellow, imagename: "bolt.fill"),
        pokemonModel(id: 1, name: "피카츄", type: "불 포켓몬", color: .red, imagename: "flame.fill"),
        pokemonModel(id: 2, name: "이상해씨", type: "풀 포켓몬", color: .green, imagename: "leaf.fill"),
        pokemonModel(id: 3, name: "꼬북이", type: "물 포켓몬", color: .blue, imagename: "tortoise.fill")
    ]
    var body: some View {
        NavigationView {
            List(pokemonList) { pokemon in
                HStack {
                    Image(systemName: pokemon.imagename)
                        .frame(width: 30)
                        .foregroundColor(pokemon.color)
                        .padding(.trailing, 10)
                    Text(pokemon.name)
                    Spacer()
                    Text(pokemon.type).foregroundColor(pokemon.color)
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("포켓몬")
            .navigationBarItems(trailing:
                                    Button("추가") {
                                        addPokemon()
                                    }
            )
        }
    }
    func addPokemon() {
        if var randomPokemon = pokemonList.randomElement() {
            let newid = pokemonList.count
            randomPokemon.id = newid
            pokemonList.append(randomPokemon)
        }
    }
}
 
struct Pokemon_Previews: PreviewProvider {
    static var previews: some View {
        Pokemon()
    }
}
