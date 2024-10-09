//
//  InviteCard.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 08/10/24.
//

import SwiftUI

struct InviteCard: View {
    @State var titulo: String = ""
    @State var descripcion: String = ""
    @State var image: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: -10) {
                ForEach(0..<3) { item in
                    (image)
                    ? Image(systemName: "person.circle.fill")
                    : Image(systemName: "creditcard.fill")
                }
                Button {
                    //
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 20, height: 20)
                        .background(.purple)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                }
            }
            
            Spacer()
            
            Text(titulo)
                .font(.title2)
                .bold()
            
            Text(descripcion)
                .font(.caption)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
            
        }.padding(.vertical).frame(width: 160, height: 160).background(.gray.opacity(0.2)).cornerRadius(20)
    }
}

#Preview {
    InviteCard()
}
