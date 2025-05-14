//
//  DetalleComidasView.swift
//  ep02
//
//  Created by andy on 8/06/24.
//

import SwiftUI

struct DetalleComidasView: View {
    let comida: Comida

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                ZStack {
                    Image(comida.nombreImagen)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 1)
                }
                
                // Indicadores debajo de la imagen
                HStack(spacing: 10) {
                    ForEach(0..<2) { index in
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                            .foregroundColor(.green) // Cambiar el color a verde
                    }
                }
                .padding(.bottom, 10) // Espacio debajo de los indicadores
                .frame(maxWidth: .infinity, alignment: .center)
                
                // Contenido con ingredientes e instrucciones
                GeometryReader { geometry in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ScrollView(.vertical) {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Ingredientes:")
                                        .estiloSeccionTitulo()
                                        .font(.system(size: 30)) // Tamaño de fuente 30 puntos
                                        .fontWeight(.bold) // Negrita
                                    ForEach(comida.ingredientes.split(separator: "\n"), id: \.self) { ingredientLine in
                                        Text(ingredientLine.trimmingCharacters(in: .whitespacesAndNewlines))
                                            .estiloContenido()
                                    }
                                }
                                .padding(1)
                                .frame(width: geometry.size.width)
                                Spacer(minLength: 50) // Espacio al final
                            }
                            ScrollView(.vertical) {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Instrucciones:")
                                        .estiloSeccionTitulo()
                                    ForEach(comida.instrucciones.split(separator: "\n"), id: \.self) { instructionLine in
                                        Text(instructionLine.trimmingCharacters(in: .whitespacesAndNewlines))
                                            .estiloContenido()
                                    }
                                }
                                .padding()
                                .frame(width: geometry.size.width)
                                Spacer(minLength: 50) // Espacio al final
                            }
                        }
                    }
                }
                .frame(height: 400)
            }
            .padding(.horizontal)
            .background(Color.white.opacity(0.8))
        }
        .navigationBarTitle(comida.titulo, displayMode: .inline)
        .background(Color.brown.opacity(0.3))
    }
}
