//
//  ContentView.swift
//  AlejandroUrbina_20829
//
//  Created by Alejandro Urbina on 21/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let comicHeight = min(geometry.size.height * 0.45, 290)
                let comicWidth = comicHeight * 0.68

                ZStack(alignment: .top) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(DataClassData.heroes) { hero in
                                NavigationLink {
                                    ComicDescription(hero: hero)
                                } label: {
                                    VStack(spacing: 12) {
                                        Image(hero.imagen)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: comicWidth, height: comicHeight)

                                        Text(hero.comic)
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                            .lineLimit(2)
                                            .multilineTextAlignment(.center)
                                    }
                                    .frame(width: comicWidth)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal, max(24, (geometry.size.width - comicWidth) / 2))
                    }
                    .scrollIndicators(.hidden)
                    .frame(height: comicHeight + 56)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                    Text("Batcave")
                        .font(.system(size: 34))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 24)
                }
            }
            .background(Color.black.ignoresSafeArea())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
