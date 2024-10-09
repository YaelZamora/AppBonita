//
//  Header.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 04/10/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://picsum.photos/75"))
                .cornerRadius(38)
            
            VStack(alignment: .leading) {
                Text("Good morning,")
                    .font(.caption)
                    .foregroundStyle(.gray)
                Text("Yael Zamora")
                    .font(.title)
                    .bold()
            }
            
            Spacer()
            
            ZStack {
                Circle().frame(width: 40)
                    .foregroundStyle(.white)
                Image(systemName: "bell")
                    .font(.title)
                    .overlay(
                        Circle()
                            .frame(width: 5)
                            .foregroundStyle(.purple)
                            .position(x: 25, y: 10)
                    )
            }
            .padding()
            .cornerRadius(20)
            .shadow(radius: 5, x: 3, y: 3)
        }.padding()
    }
}

#Preview {
    Header()
}
