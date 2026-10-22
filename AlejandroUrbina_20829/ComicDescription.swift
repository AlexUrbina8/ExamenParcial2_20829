//
//  ComicDescription.swift
//  AlejandroUrbina_20829
//
//  Created by Alejandro Urbina on 21/10/26.
//

import SwiftUI

struct ComicDescription: View {
    let hero: Hero
    @State private var EmojoSeleccion = ""

    var body: some View {
        VStack(spacing: 0) {
            Image(hero.imagen)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .clipped()
                .ignoresSafeArea(edges: .top)

            Text(hero.sinopsis)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            Text("¿Qué te pareció el cómic?")
                .font(.headline)
                .padding(.bottom, 12)

            HStack(spacing: 8) {
                ForEach(["like", "heart", "meimporta", "smile", "amazing", "sad", "angry"], id: \.self) { reaction in
                    Button {
                        EmojoSeleccion = reaction
                    } label: {
                        Image(reaction)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(EmojoSeleccion == reaction ? Color.blue : Color.white, lineWidth: 1.5))
                    }
                    .buttonStyle(.plain)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 20)

            TabView {
                Color.clear
                    .tabItem {
                        Label("Capítulos", systemImage: "info.circle.fill")
                    }

                Color.clear
                    .tabItem {
                        Label("Páginas", systemImage: "book.fill")
                    }
            }
            .frame(height: 180)
            .background(Color.black)
            .toolbarBackground(Color.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .foregroundStyle(.white)
        .background(Color.black.ignoresSafeArea())
        .preferredColorScheme(.dark)
    }
}

struct ComicDescription_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ComicDescription(hero: DataClassData.heroes[0])
        }
    }
}
