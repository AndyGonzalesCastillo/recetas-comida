//
//  ComidasView.swift
//  ep02
//
//  Created by andy on 8/06/24.
//

import SwiftUI

struct ComidasView: View {
    let tipoComida: String
    let colorFondo: Color
    @State var columnas = [GridItem(), GridItem()]
    @EnvironmentObject var comidaController: ComidaController

    var comidasFiltradas: [Comida] {
        comidaController.comidas.filter { $0.tipoComida == tipoComida }
    }

    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyVGrid(columns: columnas, content: {
                    ForEach(comidasFiltradas, id: \.id) { item in
                        NavigationLink(destination: DetalleComidasView(comida: item).environmentObject(comidaController)) {
                            VStack(alignment: .center) {
                                Text(item.titulo)
                                    .estiloComidaTitulo()
                                    .fontWeight(.bold) // Negrita

                                Image(item.nombreImagen)
                                    .estiloComidaImagen()
                                    .padding(.vertical, 1)
                                    .padding(.horizontal, -17)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    //.shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2) // Agregar sombra
                                    .overlay(
                                                                    RoundedRectangle(cornerRadius: 20)
                                                                        .stroke(Color.gray.opacity(0.2), lineWidth: 1) // Borde del contenedor
                                                                )
                                    

                                Button(action: {
                                    comidaController.alternarFavorito(for: item)
                                }) {
                                    Image(systemName: comidaController.esFavorito(item) ? "heart.fill" : "heart")
                                        .estiloBotonFavorito(esFavorito: comidaController.esFavorito(item))
                                        .padding(1)
                                }
                            }
                            .estiloComidaContenedor()
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                        }
                    }
                })
                .padding(.horizontal, 10)
                .navigationTitle(tipoComida)
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(colorFondo.opacity(0.5))
        }
    }
}
