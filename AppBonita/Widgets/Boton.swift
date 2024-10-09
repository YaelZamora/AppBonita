//
//  Boton.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 04/10/24.
//

import SwiftUI

struct Boton: View {
    @State var nombre: String
    @State var imagen: String
    @State var color: Color = .white
    @State var imagenColor: Color = .black
    
    var body: some View {
        VStack {
            Image(systemName: imagen)
                .font(.title)
                .frame(width: 65, height: 65)
                .background(color)
                .foregroundStyle(imagenColor)
                .cornerRadius(40)
            
            Text(nombre).foregroundStyle(.white)
        }
    }
}

#Preview {
    Boton(nombre: "Hola", imagen: "dollarsign.circle")
}
