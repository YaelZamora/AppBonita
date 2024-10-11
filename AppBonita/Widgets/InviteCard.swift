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
                if image {
                    ForEach(0..<3) { item in
                        AsyncImage(
                            url: URL(string: "https://picsum.photos/50")
                        )
                        .cornerRadius(25)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(.white, lineWidth: 2)
                        }
                    }
                } else {
                    ForEach(0..<2) { item in
                        AsyncImage(
                            url: URL(string: "https://picsum.photos/60/50")
                        )
                        .cornerRadius(10)
                    }
                }
                NavigationLink {
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
