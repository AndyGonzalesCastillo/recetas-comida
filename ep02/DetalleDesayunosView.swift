//
//  DetalleDesayunosView.swift
//  ep02
//
//  Created by andy on 13/05/24.
//

import SwiftUI

struct DetalleDesayunosView: View {
    let desayuno: Desayunos

    var body: some View {
        ScrollView {
                   VStack(alignment: .center, spacing: 20) {
                       // Imagen del postre
                       Rectangle()
                           .fill(Color.gray.opacity(0.1))
                           .frame(height: 200)
                           .overlay(
                               Image(desayuno.nombreImagen)
                                   .resizable()
                                   .scaledToFit()
                                   .frame(maxWidth: 400)
                                   .cornerRadius(20)
                                   .padding(.top)
                           )
                       
                       // Ingredientes
                       VStack(alignment: .leading, spacing: 10) {
                           Text("Ingredientes")
                               .font(.title2)
                               .bold()
                               .foregroundColor(.green)
                           
                           // Dividir la cadena de ingredientes en líneas
                           ForEach(desayuno.ingredientes.split(separator: "\n"), id: \.self) { ingredientLine in
                               Text(ingredientLine.trimmingCharacters(in: .whitespacesAndNewlines))
                                   .font(.body)
                                   .foregroundColor(.black)
                                   .padding(.bottom, 5)
                           }
                       }
                       .padding(.horizontal)
                       
                       // Separador
                       Divider()
                           .background(Color.green)
                       
                       // Instrucciones
                       VStack(alignment: .leading, spacing: 10) {
                           Text("Instrucciones")
                               .font(.title2)
                               .bold()
                               .foregroundColor(.green)
                           
                           // Dividir la cadena de instrucciones en líneas
                           ForEach(desayuno.instrucciones.split(separator: "\n"), id: \.self) { instructionLine in
                               Text(instructionLine.trimmingCharacters(in: .whitespacesAndNewlines))
                                   .font(.body)
                                   .foregroundColor(.black)
                                   .padding(.bottom, 5)
                           }
                       }
                       .padding(.horizontal)
                       
                       // Botones
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
               .navigationBarTitle(desayuno.titulo, displayMode: .inline)
               .background(Color.mint.opacity(0.3))
           }
       }
