//
//  HomeView.swift
//  AppBonita
//
//  Created by Yael Javier Zamora Moreno on 04/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            HomeTab().tabItem {
                Label("", systemImage: "house")
            }
            
            Tab2().tabItem {
                Label("", systemImage: "person")
            }
            
            Tab3().tabItem {
                Label("", systemImage: "sun.max")
            }
            
            Tab4().tabItem {
                Label("", systemImage: "moon")
            }
        }
    }
}

#Preview {
    HomeView()
}
