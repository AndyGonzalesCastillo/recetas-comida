//
//  DesayunosView.swift
//  ep02
//
//  Created by Alumno on 11/05/24.
//

import SwiftUI

struct DesayunosView: View {
    @State var columnas = [GridItem(), GridItem()]
    @State var desayunos = [
        Desayunos(titulo: "Chicharron",
                  nombreImagen: "chicharon",
                  esFavorito: false,
                  ingredientes: "1 kg panceta de cerdo \n  1 cda. sal \n 1 cda. azúcar \n 2 cdta. palillo \n  1 cdta. pimienta negra \n 3 lts. agua \n 1 cdta. pimienta negra entera \n 1 lts. aceite \n 3 camotes \n Pan francés",
                  
                  instrucciones: "1. Colocar la panceta en un bol. \n 2. Añadir la sal, azúcar, palillo y pimienta negra y poner a marinar. \n 3. Colocar el agua en una olla. Añadir una cucharadita de pimienta negra. \n 4. Agregar el chancho y cocinar por 40 minutos. \n 5. Retirar de la olla. Colocar aceite en una sartén y calentar. Freír el chicharrón y el camote. \n 6. Cortar el chicharrón de chancho en lonjas. Cortar el pan. \n 7. Colocar dentro del pan el camote, chicharrón y sarsa criolla a gusto."),
        
        
        Desayunos(titulo: "Frito Chiclayano",
                  nombreImagen: "fritoChiclayano",
                  esFavorito: false,
                  
                  ingredientes: "1 kg cerdo o chancho puede ser panceta y costilla \n  2 cdas ajos molido \n 1/2 taza vinagre tinto  \n 2 cdas ají panca  \n 1/2 cdta pimienta \n 1/2 cdta comino \n Sal al gusto. ",
                  
                  instrucciones: "1. Cortar la carne en trozos. \n 2. Mezclar todos los ingredientes, vinagre, sal, pimienta, comino, ají panca y el ajos. Agregar a la carne y dejar macerar 1 noche antes. \n 3. Al siguiente día en una olla colocar un chorrito de aceite y sellar los trozos de cerdo o chancho por todos los lados, agregue lo que quedó del aderezo. Tapar y dejar cocinar a fuego medio por 1 hora. \n 4. Transcurrido este tiempo bajar el fuego y dejar que se cocine por 30 minutos más. \n 5. Servir acompañado de camotes y yucas sancochadas y sarza de cebolla. Que lo disfruten."),
        
        
        Desayunos(titulo: "Quinua",
                  nombreImagen: "quinua",
                  esFavorito: false,

                  ingredientes: "200 gramos quinua bien lavada \n  2 manzanas \n 2 membrillos  \n 2 rodajas grandes de piña  \n  1/2 litros agua \n 1/2 taza azúcar rubia \n 3 ramas canela \n 7 clavos de olor \n 3 cucharadas chuño",
                  
                  instrucciones: "1. Pelar las manzanas, membrillos y piña. Reservar las cáscaras y cortar las pulpas en cuadraditos.   \n 2. En una olla grande derretir el azúcar. Agregar el agua, las cáscaras reservadas, canela y clavo de olor. Hervir durante 10 minutos, colar y volver el líquido a la olla. \n 3. Agregar la quinua, luego las frutas picadas dejar cocinar durante 30 minutos aproximadamente. Aplastar un poco las frutas. \n 4. Disolver el chuño en un poco de agua y echar de a pocos a la quinua y listo"),
        
        
        Desayunos(titulo: "Pan con pejerrey",
                  nombreImagen: "panPejerrey",
                  esFavorito: false,
                  
                  ingredientes: "1/2 kg. de pejerrey limpio. \n Sal y pimienta \n   2 huevos ligeramente batidos. \n      1 taza de harina. \n  Aceite vegetal para freír \n 6 panes (francés o ciabatta). \n 1/2 taza de mayonesa. \n 2 cucharadas de pasta de ají amarillo. \n 6 hojas de lechuga. \n Salsa criolla",
                  
                  instrucciones: "1. Lava y seca el pejerrey. Salpimienta.   \n 2. Ten dos tazones listos. En Una pon los huevos liberamente batidos y en el otro la harina. Agrégale sal y pimienta. \n 3. Calienta el aceite en una sartén a fuego medio. \n 4. Sumerge cada pejerrey en el huevo batido, luego pasa por harina, sacudiendo el exceso. \n 5. Pon el pejerrey en el aceite caliente y fríe por ambos lados, unos dos minutos. No lo recocines. \n 6. Transfiere a un plato cubierto con papel toalla para escurrir el exceso de aceite. \n 7. Corta los panes por la mitad, esparce un lado con mayonesa y con ají amarillo. \n 8. Encima acomoda una hoja de lechuga y tres o cuatro pejerreyes fritos. Cubre con salsa criolla. \n 9. Sirve de inmediato."),
  
    ]

    var body: some View {
        VStack {
                ScrollView(.vertical) {
                    LazyVGrid(columns: columnas, content: {
                        ForEach(desayunos, id: \.titulo) { item in
                            NavigationLink(destination: DetalleDesayunosView(desayuno: item)) {
                                VStack(alignment: .center) {
                                    Text(item.titulo)
                                        .font(.headline)
                                        .padding(.bottom, 5)
                                        .foregroundColor(.black)

                                    Image(item.nombreImagen)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 180) 

                                    Button(action: {
                                        alternarFavorito(for: item)
                                    }) {
                                        Image(systemName: item.esFavorito ? "heart.fill" : "heart")
                                            .font(.largeTitle)
                                            .foregroundColor(item.esFavorito ? .red : .gray)
                                    }
                                }
                                .padding()
                                .frame(width: 180, height: 225)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(.white)
                                        .opacity(0.6)
                                )
                                .padding(10)
                            }
                        }
                        .padding(.horizontal, 10)
                    })
                    .navigationTitle("Desayunos")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .background(Color.mint)
            }
        }
    

    func alternarFavorito(for item: Desayunos) {
        if let index = desayunos.firstIndex(where: { $0.id == item.id }) {
            desayunos[index].esFavorito.toggle()
        }
    }
}

struct Desayunos: Identifiable {
    let id = UUID()
    let titulo: String
    let nombreImagen: String
    var esFavorito: Bool
    let ingredientes: String
    let instrucciones: String
}

#Preview {
    DesayunosView()
}
