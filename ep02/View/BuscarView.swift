//
//  BuscarView.swift
//  ep02
//
//  Created by andy on 12/06/24.
//

import SwiftUI

struct BuscarComidasView: View {
    @State private var searchText = ""
    @ObservedObject var viewModel: ComidaViewModel

    var filteredComidas: [Comida] {
        if searchText.isEmpty {
            return viewModel.comidas.sorted { $0.titulo < $1.titulo }
        } else {
            return viewModel.comidas.filter { $0.titulo.lowercased().contains(searchText.lowercased()) }
                .sorted { $0.titulo < $1.titulo }
        }
    }

    var body: some View {
        VStack {
            TextField("Buscar comida...", text: $searchText)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding()

            ScrollView {
                LazyVStack {
                    ForEach(filteredComidas) { comida in
                        NavigationLink(destination: ComidaDetailView(comida: comida)) {
                            HStack {
                                Image(comida.nombreImagen)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(10)
                                    .padding(.trailing, 10)
                                
                                Text(comida.titulo)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                Spacer()
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 5)
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .background(Color(.systemGray6))
        }
        .navigationTitle("Buscar Comida")
    }
}


