//
//  Card.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 04/10/24.
//

import SwiftUI

struct Card: View {
    let imagenes = ["plus", "arrow.left.arrow.right", "dollarsign", "dollarsign.circle"]
    
    let nombres = ["Top Up", "Swap", "Transfer", "Request"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Balance").foregroundStyle(.white)
            
            Text("$27,918.00")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.white)
            
            Text("Credit limit: $1,000,000.00")
                .foregroundStyle(.gray)
            
            HStack {
                ForEach(0..<4) { item in
                    Boton(
                        nombre: nombres[item],
                        imagen: imagenes[item],
                        color: (item == 0) ? .purple : .white,
                        imagenColor: (item == 0) ? .white : .black
                    )
                }
            }
        }
        .frame(width: 350, height: 250)
        .background(
            LinearGradient(
                colors: [.black, .black.opacity(0.5)],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .cornerRadius(20)
    }
}

#Preview {
    Card()
}
