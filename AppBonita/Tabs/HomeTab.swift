//
//  HomeTab.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 04/10/24.
//

import SwiftUI

struct HomeTab: View {
    let titulos = ["Invite Friends", "Add Card"]
    let descripciones = ["Invite your friends using our application", "Add your card make transactions easier"]
    
    var body: some View {
        ScrollView {
            VStack {
                Header()
                Card()
                Transactions()
                HStack {
                    ForEach(0..<2) { item in
                        InviteCard(
                            titulo: titulos[item],
                            descripcion: descripciones[item],
                            image: (item == 0) ? true : false
                        )
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeTab()
}
