//
//  PrincipalView.swift
//  ep02
//
//  Created by Alumno on 11/05/24.
//

import SwiftUI

struct PrincipalView: View {
    // Se obtiene el controlador de comidas del entorno
    @EnvironmentObject var comidaController: ComidaController
    // Definición de una única columna para el grid layout
    @State var columnas = [GridItem()]
    // Datos para las categorías de comidas
    @State var Data = [
        TipoComida(name: "Postres", imageName: "postres", destination: AnyView(ComidasView(tipoComida: "Postre", colorFondo: Color("rosapastel")))),
        TipoComida(name: "Almuerzos", imageName: "almuerzos", destination: AnyView(ComidasView(tipoComida: "Almuerzo", colorFondo: .green))),
        TipoComida(name: "Desayunos", imageName: "desayunos", destination: AnyView(ComidasView(tipoComida: "Desayuno", colorFondo: .mint)))
    ]
    // Colores para las categorías de comidas
    let colores: [Color] = [Color("rosapastel"), .green, .mint]

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Comidas peruanas")
                    .estiloTituloPersonalizado()
                Spacer()

                ScrollView(.vertical) {
                    ZStack(alignment: .center) {
                        Image("banner1")
                            .resizable()
                            .opacity(0.9)
                            .frame(height: 200)
                            .overlay(Color.black.opacity(0.4))

                        Text("RECETAS DE COMIDAS PERUANAS")
                            .estiloBannerPersonalizado()
                    }
                    LazyVGrid(columns: columnas, spacing: 0, content: {
                        ForEach(Data.indices, id: \.self) { index in
                            let item = Data[index]
                            NavigationLink(destination: item.destination.environmentObject(comidaController)) {
                                ZStack(alignment: .topLeading) {
                                    Rectangle()
                                        .estiloRectanguloPersonalizado(color: colores[index % colores.count])

                                    // Contenido de cada celda de la grid: imagen y texto
                                    HStack(alignment: .center, spacing: 15) {
                                        Image(item.imageName)
                                            .estiloImagenPersonalizado()

                                        Text(item.name)
                                            .estiloTextoPersonalizado()
                                    }
                                    .padding()
                                }
                            }.padding(-5)
                        }
                    })
                }
            }.background(Color.white)
        }
    }
}
