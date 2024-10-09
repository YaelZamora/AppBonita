//
//  Transactions.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 04/10/24.
//

import SwiftUI

struct Transactions: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Transactions").bold()
                Spacer()
                Text("See all").foregroundStyle(.purple)
            }.padding()
            
            ForEach(0..<2) { item in
                Operations(
                    ingreso: (item == 0) ? true : false,
                    cantidad: (item == 0) ? 3000 : 5343
                )
            }
        }
    }
}

#Preview {
    Transactions()
}
