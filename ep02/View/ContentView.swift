//
//  ContentView.swift
//  ep02
//
//  Created by Alumno on 11/05/24.
//
	
import SwiftUI
struct ContentView: View {
    // Se crea un objeto de ComidaController para manejar la lógica y los datos relacionados con las comidas
    @StateObject var comidaController = ComidaController()
    // Variable de estado para controlar la pestaña seleccionada
    @State private var seleccionada = ""

    var body: some View {
        TabView(selection: $seleccionada) {
            BuscarComidasView()
                .tabItem {
                    Label("Buscar", systemImage: "magnifyingglass")
                }
                .tag("buscar")
                .environmentObject(comidaController)  // Se pasa el controlador de comidas como objeto de entorno

            PrincipalView()
                .tabItem {
                    Label("Principal", systemImage: "house.fill")
                }
                .tag("principal")
                .environmentObject(comidaController)
            FavoritosView()
                .tabItem {
                    Label("Me gusta", systemImage: "heart.fill")
                }
                .tag("meGusta")
                .environmentObject(comidaController)
        }
        .onAppear {
            // Al aparecer la vista, se establece la pestaña seleccionada como "principal"
            seleccionada = "principal"
        }
    }
}

#Preview {
    ContentView()
}
