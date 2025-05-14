//
//  Modifier.swift
//  ep02
//
//  Created by andy on 13/06/24.
//

import Foundation
import SwiftUI

extension View {
    // Utilizado en PrincipalView
    func estiloTituloPersonalizado() -> some View {
        self.font(.system(size: 35))
            .bold()
            .padding(.leading, -70)
    }

    // Utilizado en PrincipalView
    func estiloBannerPersonalizado() -> some View {
        self.font(.title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .shadow(color: .black, radius: 8, x: 0, y: 8)
            .padding()
    }

    // Utilizado en PrincipalView
    func estiloRectanguloPersonalizado(color: Color) -> some View {
        self.frame(width: 340, height: 140)
            .cornerRadius(30)
            .padding()
            .foregroundColor(color)
    }

    // Utilizado en PrincipalView
    func estiloTextoPersonalizado() -> some View {
        self.font(.title2)
            .foregroundColor(.white)
    }

    // Utilizado en ComidasView
    func estiloComidaTitulo() -> some View {
        self.font(.headline)
            .padding(.bottom, 5)
            .foregroundColor(.black)
    }

    // Utilizado en ComidasView, DetalleComidasView, BuscarComidasView, FavoritosView, TarjetaView
    func estiloBotonFavorito(esFavorito: Bool) -> some View {
        self.font(.largeTitle)
            .foregroundColor(esFavorito ? .red : .gray)
    }

    // Utilizado en ComidasView
    func estiloComidaContenedor() -> some View {
        self.padding()
            .frame(width: 180, height: 225)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .opacity(0.6)
            )
            .padding(10)
    }

    // Utilizado en DetalleComidasView
    func estiloSeccionTitulo() -> some View {
        self.font(.title2)
            .bold()
            .foregroundColor(.green)
    }

    // Utilizado en DetalleComidasView
    func estiloContenido() -> some View {
        self.font(.body)
            .foregroundColor(.black)
            .padding(.bottom, 5)
    }

    // Utilizado en BuscarComidasView
    func estiloImagenLista() -> some View {
        self
            .frame(width: 50, height: 50)
            .cornerRadius(8)
    }

    // Utilizado en BuscarComidasView
    func estiloTituloLista() -> some View {
        self.font(.headline)
    }

    // Utilizado en BuscarComidasView
    func estiloSubtituloLista() -> some View {
        self.font(.subheadline)
            .foregroundColor(.secondary)
    }

    // Utilizado en DetalleComidasView
    func estiloImagenDetalle() -> some View {
        self
            .scaledToFit()
            .frame(maxWidth: 400)
            .cornerRadius(20)
            .padding(.top)
    }

    // Utilizado en DetalleComidasView
    func estiloContenedor() -> some View {
        self.padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(radius: 10)
            )
            .padding([.leading, .trailing], 10)
    }

    // Utilizado en DetalleComidasView
    func estiloFondo() -> some View {
        self.padding(.horizontal)
            .background(Color(.systemGray6).opacity(0.5))
    }

    // Utilizado en FavoritosView
    func estiloTituloFavoritos() -> some View {
        self.font(.title2)
            .foregroundColor(.gray)
    }

    // Utilizado en FavoritosView
    func estiloIconoFavoritos() -> some View {
        self
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .padding()
    }

    // Utilizado en TarjetaView
    func estiloTarjeta() -> some View {
        self.background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
    }

    // Utilizado en TarjetaView
    func estiloImagenTarjeta() -> some View {
        self
            .scaledToFill()
            .frame(height: 250)
            .clipped()
            .cornerRadius(15)
    }

    // Utilizado en TarjetaView
    func estiloTextoTarjeta() -> some View {
        self.font(.system(size: 35))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.leading, 40)
    }

    // Utilizado en TarjetaView
    func estiloSubtextoTarjeta() -> some View {
        self.font(.system(size: 23))
            .foregroundColor(.white)
            .padding(.leading, 40)
    }

    // Utilizado en TarjetaView
    func estiloBotonTarjeta() -> some View {
        self.padding()
            .background(Color.white.opacity(0.7))
            .clipShape(Circle())
    }

    // Utilizado en TarjetaView
    func estiloBotonVerDetalles() -> some View {
        self.font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.blue)
            .padding(.vertical, 10)
    }
}

extension Image {
    // Utilizado en PrincipalView
    func estiloImagenPersonalizado() -> some View {
        self.resizable()
            .cornerRadius(30)
            .padding()
            .frame(width: 160, height: 140)
    }

    // Utilizado en ComidasView
    func estiloComidaImagen() -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180)
    }
}

extension Rectangle {
    // Utilizado en DetalleComidasView
    func estiloRectangulo() -> some View {
        self.fill(Color.gray.opacity(0.1))
            .frame(height: 200)
            .shadow(radius: 10)
    }
}
