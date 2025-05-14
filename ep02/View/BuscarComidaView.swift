import SwiftUI

struct BuscarComidasView: View {
    @State private var searchText = ""  // Estado para almacenar el texto de búsqueda
    @EnvironmentObject var comidaController: ComidaController  // Referencia al controlador de comidas

    // filtra y ordena las comidas basándose en el texto de búsqueda
    var filteredComidas: [Comida] {
        // Filtra las comidas si el texto de búsqueda no está vacío, de lo contrario usa todas las comidas
        let comidas = searchText.isEmpty ? comidaController.comidas : comidaController.comidas.filter { $0.titulo.localizedCaseInsensitiveContains(searchText) }
        // Ordena las comidas por título de forma insensible a mayúsculas y minúsculas
        return comidas.sorted { $0.titulo.localizedCaseInsensitiveCompare($1.titulo) == .orderedAscending }
    }

    var body: some View {
        NavigationView {
            // Lista que muestra las comidas filtradas
            List(filteredComidas) { comida in
                NavigationLink(destination: DetalleComidasView(comida: comida).environmentObject(comidaController)) {
                    HStack {
                        Spacer()

                        VStack {
                            HStack {
                                Image(comida.nombreImagen)
                                    .resizable()
                                    .estiloImagenLista()

                                VStack(alignment: .leading) {
                                    Text(comida.titulo)
                                        .estiloTituloLista()
                                    Text(comida.tipoComida)
                                        .estiloSubtituloLista()
                                }

                                Spacer()

                                // Botón para alternar el estado de favorito
                                Button(action: {
                                    comidaController.alternarFavorito(for: comida)
                                }) {
                                    Image(systemName: comidaController.esFavorito(comida) ? "heart.fill" : "heart")
                                        .foregroundColor(comidaController.esFavorito(comida) ? .red : .gray)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                            .contentShape(Rectangle())
                        }
                        .padding(.vertical, 5)
                        Spacer()
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Buscar Comidas")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar")  // Barra de búsqueda en la navegación
        }
        .frame(maxWidth: .infinity)
    }
}
