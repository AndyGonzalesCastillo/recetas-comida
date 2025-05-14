//
//  DetalleAlmuerzosView.swift
//  ep02
//
//  Created by andy on 13/05/24.
//

import SwiftUI

struct DetalleAlmuerzosView: View {
    let almuerzo: Almuerzos

    var body: some View {
        ScrollView {
             VStack(alignment: .center, spacing: 20) {
                 Rectangle()
                     .fill(Color.gray.opacity(0.1))
                     .frame(height: 200)
                     .overlay(
                         Image(almuerzo.nombreImagen)
                             .resizable()
                             .scaledToFit()
                             .frame(maxWidth: 400)
                             .cornerRadius(20)
                             .padding(.top)
                     )
                 
                 VStack(alignment: .leading, spacing: 10) {
                     Text("Ingredientes")
                         .font(.title2)
                         .bold()
                         .foregroundColor(.green)
                     
                     // Dividir la cadena de ingredientes en líneas
                     ForEach(almuerzo.ingredientes.split(separator: "\n"), id: \.self) { ingredientLine in
                         Text(ingredientLine.trimmingCharacters(in: .whitespacesAndNewlines))
                             .font(.body)
                             .foregroundColor(.black)
                             .padding(.bottom, 5)
                     }
                     
                     Divider()
                         .background(Color.green)
                     
                     Text("Instrucciones")
                         .font(.title2)
                         .bold()
                         .foregroundColor(.green)
                     
                     // Dividir la cadena de instrucciones en líneas
                     ForEach(almuerzo.instrucciones.split(separator: "\n"), id: \.self) { instructionLine in
                         Text(instructionLine.trimmingCharacters(in: .whitespacesAndNewlines))
                             .font(.body)
                             .foregroundColor(.black)
                             .padding(.bottom, 5)
                     }
                 }
                 .padding(.horizontal)
                 
                 Spacer()
                 
                 HStack(spacing: 20) {
                     Button(action: {
                         // Acción de información nutricional
                     }) {
                         Text("Información nutricional")
                             .padding(15)
                             .background(Color.green)
                             .foregroundColor(.white)
                             .cornerRadius(20)
                     }
                     
                     Button(action: {
                         // Acción de compartir
                     }) {
                         Text("Compartir")
                             .padding(15)
                             .background(Color.green)
                             .foregroundColor(.white)
                             .cornerRadius(20)
                     }
                 }
                 .padding(.bottom)
             }
             .padding(.horizontal)
             .background(Color.gray.opacity(0.1))
         }
         .navigationBarTitle(almuerzo.titulo, displayMode: .inline)
         .background(Color.green.opacity(0.3))
     }
 }

