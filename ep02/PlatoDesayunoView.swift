//
//  PlatoDesayunoView.swift
//  ep02
//
//  Created by Alumno on 11/05/24.
//

import SwiftUI

struct PlatoDesayunoView: View {
    @State var cantidad : Int = 1
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("desayunos")
                        .resizable()
                        .scaledToFit()
                }
                HStack {
                    Spacer()
                    Stepper("Ingredientes \(cantidad)", value: $cantidad, in: 1...10)
    
                   
                }.padding()
                VStack(alignment: .leading) {
                    Text("Instrucciones")
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dapibus est vitae est placerat, vel rutrum enim ultrices. Nam auctor varius quam, et tincidunt leo tincidunt sit amet. Ut mauris ex, mollis sit amet ante at, aliquam elementum nibh. Integer at neque feugiat, mollis nulla nec, lobortis orci. Vestibulum tincidunt.")
                }.padding()
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Text("Informacion nutricional")
                            .padding(20)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        })
                
                
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Compartir")
                            .padding(20)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    })
                    
                }
        
            }.navigationTitle("Desayuno 1")
        }
    }
}

#Preview {
    PlatoDesayunoView()
}
