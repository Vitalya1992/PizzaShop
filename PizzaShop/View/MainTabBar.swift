//
//  MainTabBar.swift
//  PizzaShop
//
//  Created by пользователь on 27.12.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            CatalogView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Каталог")
                    }
                }
            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Профиль")
                    }
                }
        }
    }
}

#Preview {
    MainTabBar()
}
