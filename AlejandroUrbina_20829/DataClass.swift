//
//  DataClass.swift
//  AlejandroUrbina_20829
//
//  Created by Alejandro Urbina on 21/10/26.
//

import Foundation

struct Hero: Identifiable {
    let id: Int
    let comic: String
    let imagen: String
    let numerosCapitulos: [Int]
    let paginas: [Int]
    let favoritosIniciales: String
    let sinopsis: String
}
