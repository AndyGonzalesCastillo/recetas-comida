//
//  Model.swift
//  ep02
//
//  Created by andy on 12/06/24.
//



import Foundation
import SwiftUI

// Estructura para representar un tipo de comida
struct TipoComida: Identifiable, Equatable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    let destination: AnyView
    
    // Implementación de la igualdad para comparar dos instancias de TipoComida
    static func == (lhs: TipoComida, rhs: TipoComida) -> Bool {
        return lhs.id == rhs.id
    }

    // Implementación del método hashable para poder usar TipoComida en conjuntos y diccionarios
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// Estructura para representar una comida
struct Comida: Identifiable, Decodable {
    let id: UUID
    let titulo: String
    let nombreImagen: String
    let ingredientes: String
    let instrucciones: String
    let tipoComida: String

    // Inicializador para decodificar una instancia de Comida desde un objeto Decoder
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        titulo = try container.decode(String.self, forKey: .titulo)
        nombreImagen = try container.decode(String.self, forKey: .nombreImagen)
        ingredientes = try container.decode(String.self, forKey: .ingredientes)
        instrucciones = try container.decode(String.self, forKey: .instrucciones)
        tipoComida = try container.decode(String.self, forKey: .tipoComida)
        id = try container.decodeIfPresent(UUID.self, forKey: .id) ?? UUID()
    }

    // Claves de codificación que coinciden con los nombres de las propiedades
    enum CodingKeys: String, CodingKey {
        case id
        case titulo
        case nombreImagen
        case ingredientes
        case instrucciones
        case tipoComida
    }
}
