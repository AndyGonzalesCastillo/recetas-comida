//
//  Controller.swift
//  ep02
//
//  Created by andy on 12/06/24.
//


import Foundation
import SwiftUI

// Clase que maneja la lógica y los datos relacionados con las comidas
class ComidaController: ObservableObject {
    // Lista de todas las comidas disponibles
    @Published var comidas: [Comida] = []
    // Conjunto de IDs de las comidas marcadas como favoritas
    @Published var favoritos: Set<UUID> = []

    // Inicializador que carga los datos y los favoritos al crear una instancia de la clase
    init() {
        cargarDatos()
        cargarFavoritos()
    }

    // Función que carga los datos de las comidas desde un archivo JSON en el bundle
    func cargarDatos() {
        if let url = Bundle.main.url(forResource: "comidas", withExtension: "json") {
            do {
                // Leer los datos del archivo JSON
                let data = try Data(contentsOf: url)
                // Decodificar los datos JSON en una lista de objetos Comida
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Comida].self, from: data)
                self.comidas = jsonData
            } catch {
                // Manejo de errores en caso de que falle la carga de datos
                print("Error al cargar datos: \(error)")
            }
        }
    }

    // Función que alterna el estado de favorito de una comida (agrega o quita de favoritos)
    func alternarFavorito(for comida: Comida) {
        if favoritos.contains(comida.id) {
            favoritos.remove(comida.id)
        } else {
            favoritos.insert(comida.id)
        }
        // Guardar los cambios en favoritos
        guardarFavoritos()
    }

    // Función que verifica si una comida es favorita
    func esFavorito(_ comida: Comida) -> Bool {
        favoritos.contains(comida.id)
    }

    // Función privada que carga los favoritos desde UserDefaults
    private func cargarFavoritos() {
        if let savedFavorites = UserDefaults.standard.object(forKey: "favoritos") as? [String] {
            // Convertir los strings guardados en UUIDs y asignarlos al conjunto de favoritos
            self.favoritos = Set(savedFavorites.compactMap { UUID(uuidString: $0) })
        }
    }

    // Función privada que guarda los favoritos en UserDefaults
    private func guardarFavoritos() {
        // Convertir los UUIDs a strings y guardarlos en UserDefaults
        let favoritesArray = favoritos.map { $0.uuidString }
        UserDefaults.standard.set(favoritesArray, forKey: "favoritos")
    }
}
