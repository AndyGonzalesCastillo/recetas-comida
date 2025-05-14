import SwiftUI

struct FavoritosView: View {
    @EnvironmentObject var comidaController: ComidaController  // Referencia al controlador de comidas
    @State private var mostrarAlerta = false  // Estado para controlar la visualización de la alerta
    @State private var comidaSeleccionada: Comida?  // Estado para almacenar la comida seleccionada

    //  obtener las comidas marcadas como favoritas
    var comidasFavoritas: [Comida] {
        comidaController.comidas.filter { comidaController.esFavorito($0) }
    }

    var body: some View {
        NavigationView {
            ZStack {
                // Fondo de degradado
                LinearGradient(gradient: Gradient(colors: [Color("rosapastel"), Color.white]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                // Mostrar mensaje si no hay comidas favoritas
                if comidasFavoritas.isEmpty {
                    VStack {
                        Image(systemName: "heart.slash.fill")
                            .resizable()
                            .estiloIconoFavoritos()

                        Text("No tienes recetas favoritas")
                            .estiloTituloFavoritos()
                    }
                    .navigationTitle("Favoritos")
                } else {
                    // Mostrar lista de comidas favoritas
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(comidasFavoritas) { comida in
                                // Vista de tarjeta para cada comida
                                TarjetaView(comida: comida)
                                    .environmentObject(comidaController)
                                    .padding(.horizontal)
                            }
                        }
                        .padding(.top)
                    }
                    .navigationTitle("Favoritos")
                }
            }
        }
    }
}

struct TarjetaView: View {
    @EnvironmentObject var comidaController: ComidaController  // Referencia al controlador de comidas
    let comida: Comida  // La comida que se va a mostrar
    @State private var mostrarAlerta = false  // Estado para controlar la visualización de la alerta

    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomLeading) {
                Image(comida.nombreImagen)
                    .resizable()
                    .estiloImagenTarjeta()
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.6)]), startPoint: .center, endPoint: .bottom)
                            .cornerRadius(15)
                    )

               
                VStack(alignment: .leading) {
                    Text(comida.titulo)
                        .estiloTextoTarjeta()
                    Text(comida.tipoComida)
                        .estiloSubtextoTarjeta()
                }
                .padding(.bottom, 10)
                .frame(maxWidth: .infinity, alignment: .leading)

                // Botón de favorito
                HStack {
                    Spacer()
                    Button(action: {
                        mostrarAlerta = true
                    }) {
                        Image(systemName: comidaController.esFavorito(comida) ? "heart.fill" : "heart")
                            .estiloBotonTarjeta()
                            .foregroundColor(comidaController.esFavorito(comida) ? .red : .gray)
                    }
                    .padding(.trailing, 30)
                    .alert(isPresented: $mostrarAlerta) {
                        Alert(
                            title: Text("Eliminar de Favoritos"),
                            message: Text("¿Está seguro de que desea eliminar esta receta de sus favoritos?"),
                            primaryButton: .destructive(Text("Eliminar")) {
                                comidaController.alternarFavorito(for: comida)
                            },
                            secondaryButton: .cancel()
                        )
                    }
                }
                .padding(.trailing, 10)
                .padding(.bottom, 10)
            }

            // Botón para ver detalles de la comida
            HStack {
                Spacer()
                NavigationLink(destination: DetalleComidasView(comida: comida).environmentObject(comidaController)) {
                    Text("Ver detalles")
                        .estiloBotonVerDetalles()
                }
                Spacer()
            }
        }
        .estiloTarjeta()
    }
}
