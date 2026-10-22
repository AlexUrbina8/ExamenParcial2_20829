//
//  DataClassData.swift
//  AlejandroUrbina_20829
//
//  Created by Alejandro Urbina on 21/10/26.
//

struct DataClassData {
    static let heroes: [Hero] = [
        Hero(
            id: 1,
            comic: "SpiderMan",
            imagen: "spiderman",
            numerosCapitulos: [1, 2, 3, 4, 5],
            paginas: [20, 34, 45, 56, 78],
            favoritosIniciales: "2 y 5",
            sinopsis: "Un estudiante ejemplar es picado por una araña ahora puede trepar paredes"
        ),
        Hero(
            id: 2,
            comic: "SuperMan",
            imagen: "superman",
            numerosCapitulos: [101, 102, 103, 104, 105],
            paginas: [50, 44, 35, 26, 18],
            favoritosIniciales: "103, 104 y 105",
            sinopsis: "Un alienigena amigable casi invencible se enamora de una reportera"
        ),
        Hero(
            id: 3,
            comic: "Batman y Robin",
            imagen: "batman",
            numerosCapitulos: [201, 202, 203, 204, 205],
            paginas: [5, 4, 353, 23, 318],
            favoritosIniciales: "201",
            sinopsis: "Un multimillonario adopta un niño trapecista y pelean contra un guasón"
        ),
        Hero(
            id: 4,
            comic: "Flash",
            imagen: "flash",
            numerosCapitulos: [999, 998, 997, 996, 995],
            paginas: [20, 20, 20, 20, 20],
            favoritosIniciales: "Ninguno",
            sinopsis: "Un joven cientifico es golpeado por un rayo ahora es bien veloz XD"
        ),
        Hero(
            id: 5,
            comic: "Sonic",
            imagen: "sonic",
            numerosCapitulos: [10, 11, 12, 13, 14],
            paginas: [15, 15, 15, 15, 15],
            favoritosIniciales: "Todos",
            sinopsis: "Un erizo azul y sus amigos se enfrentan a un tal Dr Eggman"
        )
    ]
}
