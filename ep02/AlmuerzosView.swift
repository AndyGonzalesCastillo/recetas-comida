//
//  AlmuerzosView.swift
//  ep02
//
//  Created by Alumno on 11/05/24.
//

import SwiftUI

struct AlmuerzosView: View {
    @State var columnas = [GridItem(), GridItem()]
    @State var almuerzos = [
        Almuerzos(titulo: "Aji de Gallina", nombreImagen: "ajiGallina", esFavorito: false, ingredientes: "1 cebolla picada \n 2 Pechugas de pollo (gallina de preferencia) \n 2 dientes de ajo picados \n Apio y zanahoria en trozos \n Sal, pimienta y comino a gusto \n  3 cucharadas aceite vegetal \n Leche Evaporada \n 4 rebanadas de pan de molde sin bordes \n 5 cucharadas ají amarillo molido \n 2 cucharadas ají mirasol molido \n Si lo deseamos, podemos además usar nueces.", instrucciones: "1. En una olla pondremos a cocer las pechugas de pollo o la gallina junto a nuestras verduras (NO los ají) y un poco de sal. Una vez este todo cocido, desmenuzamos el pollo, sacamos las verduras y guardamos el caldo. \n 2. En un pote o fuente a elección pondremos la leche evaporada y remojaremos el pan, lo desmenuzamos con las manos y reservamos. En una olla calentamos las cucharadas de aceite y prepararemos un sofrito con cebolla y ajo molido , sazonaremos con pimienta, sal y comino. Cuando la cebolla comience a transparentarse, agregamos nuestros ajís molidos y revolvemos vigorosamente. Una vez mezclado todo, agregamos el pan y una buena cantidad de leche para luego seguir revolviendo. \n 3. Ahora viene un paso muy importante, retiraremos nuestra mezcla de la olla y la llevaremos a una licuadora. Debemos ir licuando e ir agregando leche/caldo hasta encontrar la textura deseada. \n 4. Una vez encontrada la textura, devolvemos a la olla y añadimos el pollo desmenuzado, revolvemos bien y servimos. \n 5.Acompaña esta preparación con una buena porción de arroz y tendremos un mundo de sabores en tu paladar. Disfruta este espectacular ají de gallina."),
        Almuerzos(titulo: "Arroz con pollo", nombreImagen: "arrozConPollo", esFavorito: false, ingredientes: "1 1/2 taza de hojas de cilantro \n 4 hojas de espinaca \n 4 piernas y muslos de pollo, sin piel \n Sal y pimienta \n 1/4 taza de aceite vegetal \n 1 taza de cebolla picada fina \n 1 cucharada de ajo picado \n 1/2 taza de pasta de ají \n 1 taza de cerveza \n 2 tazas de caldo de pollo \n  1 taza de aceite vegetal \n 2 tazas de arroz de grano largo \n 1/4 taza de alverjitas (petit pois, chícharos) \n 1/4 taza de zanahoria cortada en cubitos \n 1/2 pimiento rojo, cortado en \n 1 taza de maíz blanco \n  Salsa Criolla (ingredientes listados en paso 7)", instrucciones: "1. En una licuadora, licúa cilantro junto con la espinaca y agua como para hacer una pasta homogénea. Reserva. \n 2. Seca el pollo con papel toalla y sazona con sal y pimienta. En una olla se calienta el aceite a fuego medio y se fríe el pollo hasta que esté dorado por ambos lados, unos 7 minutos. Retira de la olla y ponlo en un plato. \n 3. En la misma olla fríe la cebolla, ajo y la pasta de ají amarillo, revolviendo por 5 minutos. Incorpora el cilantro y espinaca licuado, fríe por 3 minutos. Agrega la cerveza, caldo de pollo, y agrega el pollo en la olla. \n 4. Hierve, tapa y baja el fuego. Cuece por 20 minutos. Corrige la sazón con más sal y pimienta si fuera necesario. \n 5. En otra olla calienta 1 cucharada de aceite. Incorpora el arroz y revuélvelo bien. Agrega las alverjitas, zanahorias, pimiento, maíz, y 3 1/2 tazas del caldo que utilizaste para cocinar el pollo. Deja que rompa hervor, tapa, baja el fuego al mínimo y deja cocer por 20 a 25 minutos. Revuelve con un tenedor y volver a tapar. \n 6. Cuando el arroz esté a punto, servir en cuatro platos, poner encima una pierna de pollo y Salsa Criolla al costado. Si quieren también un poco del juguito en el que se coció el pollo. \n 7. Para hacer la Salsa Criolla, corta 1/2 cebolla roja en láminas muy delgadas a lo largo, lava bien y escurre. Mezcla con 1/2 tomate cortado en tiras muy finas, hojas de cilantro, sal, pimienta, jugo de 1 limón y 1 cucharada de aceite de oliva. Si desean le pueden agregar tiritas de ají."),
        Almuerzos(titulo: "Causa Limeña", nombreImagen: "causa", esFavorito: false, ingredientes: " 3 ajíes amarillos \n 1 kilogramo de papas amarillas \n 3 limones \n  60 mililitros de aceite vegetal \n Sal y pimienta al gusto \n 250 gramos de pollo \n 2 cebollas \n 1 pimentón verde \n  5 ajíes \n 100 gramos de mayonesa \n 1 aguacate mediano picado en rebanadas \n 1 zanahoria mediana", instrucciones: "1. Para hacer la receta de la causa limeña primero debes tener en cuenta que la base de la masa de la causa limeña son las papas. Para hacerla, retira la cáscara y llévalas a hervir con un poquito de sal hasta que ablanden. \n 2. Mientras tanto, prepara la salsa de ají amarillo que servirá para dar sabor y color a la masa. Solo tienes que picar los ajíes, eliminar las semillas y las venas y cortarlos en cuartos. Llévalos a hervir hasta que ablanden. \n 3. Cuando estén suaves, retira la piel y licúa la carne. \n 4. Obtendrás una salsa de consistencia un poco espesa y de un bonito color amarillo. Resérvala. \n 5. Ahora es el momento de preparar el pollo de la causa peruana. Cocínalo en agua junto con una de las cebollas, el pimentón verde y los ajíes. Por supuesto, no olvides la sal. Con una cucharada rasa está bien, aunque es a tu gusto. \n 6. En la misma agua del pollo puedes poner a hervir las judías y las zanahorias. Eso sí, es importante que nada se cocine más de lo debido. Cuando estén listas, retíralas del agua y desmecha el pollo completamente. \n 7. Cuando las papas estén listas, aprovecha que están calientes para elaborar la masa. Solo hazlas puré y procura que te quede lo más fino posible. \n 8. Ahora agrega al puré todos los demás ingredientes: la salsa amarilla, el aceite, el jugo de los limones, sal y pimienta. Mezcla muy bien amasando con las manos. \n 9. Une el pollo ya desmechado junto con la otra cebolla bien picadita, la mayonesa y un poco de sal y pimienta. \n 10. Llegó el momento de armar la causa limeña. Primero, toma una porción de la masa y cubre el fondo de un molde. Luego, coloca las rebanadas de aguacate por encima del puré. \n 11. Cubre el aguacate con la mezcla del pollo. \n 12. Toma otra pequeña porción de masa y tapa todo el pollo. Encima, coloca la capa de zanahorias y judías verdes. \n 13. Con la masa que quede, cubre bien la causa limeña. Para el adorno, corta los huevos de forma longitudinal y colócalos encima de la causa junto a las aceitunas. Déjala reposar un poco en la nevera. Este es un plato que se sirve frío."),
        Almuerzos(titulo: "ceviche", nombreImagen: "ceviche", esFavorito: false, ingredientes: " 1 pizca de pimienta \n 1 kilogramo de pescado de tu elección \n 1 cebolla cortada en julianas \n ¼ taza de taza cilantro de hoja picada \n 1 ají amarillo picado \n 1 ají limo picado (para decorar) \n 12 limones \n 1 pizca de sal y pimienta \n 1 taza de caldo de pescado \n 1 maíz tierno sancochado \n 1 camote sancochado (batata o boniato) \n 1 manojo de hojas de lechuga ", instrucciones: "1. Lo primero que debes hacer para poder elaborar la receta fácil de ceviche peruano es exprimir los 12 limones para extraer su jugo, resérvalo para más adelante. Luego, corta el pescado en trozos de 3 centímetros, aproximadamente. Coloca los trozos en el recipiente que vayas a utilizar para servir el plato. \n 2. Mezcla el pescado con el ají amarillo picado, el caldo de pescado y el cilantro. Coloca también la cebolla cortada en julianas y el ajo machacado. Déjalo reposar unos minutos para que se marine bien e se impregne de todos los sabores. \n 3. Salpimienta al gusto y coloca a un lado del plato el camote sancochado, la lechuga y el maíz tierno también hervido. \n 4. Después, vierte el zumo de limón por todo el plato de manera que quede todo bien cubierto. Por último, corta una lámina de ají limo rojo y colócala a modo de decoración. Resérvalo en el frigorífico para que se enfríe, puesto que este es un plato que se sirve frío. El ceviche peruano es un plato que actúa como aperitivo, por lo que puedes acompañarlo con un arroz con camarones o un delicioso salmón con salsa de gambas. ¡Listo para comer!"),
        Almuerzos(titulo: "Lomo saltado", nombreImagen: "lomo", esFavorito: false, ingredientes: "1 libra de lomo de res cortado en tiras delgadas \n 2 dientes de ajo, finamente picados \n Sal \n Pimienta al gusto \n 3 cucharadas de aceite vegetal \n 1 cebolla morada (roja) pequeña, cortada en rodajas gruesas \n 2 tomates (jitomates) perita cortados en rodajas gruesas \n 1 ají amarillo sin semillas ni venas, cortado en tiras finas \n 2 cucharadas de salsa de soya \n 3 cucharadas de vinagre de vino tinto \n 1/3 taza de caldo de carne (caldo de res) \n 1/2 taza de cilantro fresco, picado grueso \n 2tazas de papas fritas \n Arroz blanco como acompañante", instrucciones: "1. Sazona la carne con ajo, sal y pimienta. \n 2. Coloca un wok o una sartén a fuego muy alto. Añade el aceite y saltea la carne, unas pocos tiras a la vez (2 minutos por tanda)para que no se suden, sino que se doren. \n 3. Agrega la cebolla, el tomate, el ají y saltea todo por aproximadamente 2 a 3 minutos. Los tomates y la cebolla deben estar crujientes, no blandos. Añade la salsa de soya y el vinagre a los lados del wok o la sartén y mezcla todo. Añade el caldo de carne (de res) y cocina 1 1/2 minutos más. Pruébalo para ajustar la sazón. \n 4. Apaga el fuego, agrega el cilantro picado y sírvelo inmediatamente con papas fritas y arroz blanco."),
        Almuerzos(titulo: "Pachamanca a la olla", nombreImagen: "pachamanca", esFavorito: false, ingredientes: "1/2 kilo arroz 1 kilo camote lavado \n El kilo de papa arenosa lavado \n 6 presas pollo macerado \n 1/2 vaso culantro molido y espinaca y huacatay \n 1/2 vasito chicha jora sillao y ají Colorado molido \n 1/2 cucharita Orégano molido y Romero molido \n Aceite lo necesario \n Sal al gusto \n", instrucciones: "1.Sancocha el arroz y granee \n 2.Tener listo medio vasito de Ají Colorado molido, espinaca, culantro, (huacatay un vaso) y agregue el sillao una pizca de pimienta comino, orégano molido, Romero molido, agregue medio vaso de chicha jora todo mezclar en un tazón y luego ahí agregue las presas de pollo y macerar hasta el día siguiente con sal al gusto \n 3.Retirar las presas de pollo y sin jugo y ponerlos a dorar en aceite valiente ambas caras y reserve \n 4.En una olla agregue el condimento de lo que mácerastes el pollo adorar hasta que seque el líquido y agrega aceite y doré bien y agregue medio litro de agua hervida y agregue las presas de pollo y el camote la papá arenosa encima poner un plástico para que no salga vapor tapar bien y por media hora sancochar es muy agradable y muy diferente \n 5.Servir en plato el arroz y encima la pachamanca, es muy diferente"),

    ]

    var body: some View {
        VStack {
                ScrollView(.vertical) {
                    LazyVGrid(columns: columnas, content: {
                        ForEach(almuerzos, id: \.titulo) { item in
                            NavigationLink(destination: DetalleAlmuerzosView(almuerzo : item)) {
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
                    .navigationTitle("Almuerzos")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .background(Color.green)
            }
        }
    

    func alternarFavorito(for item: Almuerzos) {
        if let index = almuerzos.firstIndex(where: { $0.id == item.id }) {
            almuerzos[index].esFavorito.toggle()
        }
    }
}
func formatIngredientes(_ ingredientes: String) -> String {
    // Reemplazar el punto "." por "\n"
    return ingredientes.replacingOccurrences(of: ". ", with: "\n")
}

struct Almuerzos: Identifiable {
    let id = UUID()
    let titulo: String
    let nombreImagen: String
    var esFavorito: Bool
    let ingredientes: String
    let instrucciones: String
}


#Preview {
    AlmuerzosView()
}
