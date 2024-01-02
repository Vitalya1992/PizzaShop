//
//  CatalofViewModel.swift
//  PizzaShop
//
//  Created by пользователь on 31.12.2023.
//

import Foundation

class CatalofViewModel: ObservableObject {
    static let shared = CatalofViewModel()
    
    var products = [Product(id: "1", title: "Маргарита Гурмэ", imageUrl: "Not fond", price: 450, descript: "Описание пицы") , Product(id: "2", title: "Маргарита", imageUrl: "Not fond", price: 350, descript: "Описание пицы") , Product(id: "3", title: "Пипперони", imageUrl: "Not fond", price: 550, descript: "Описание пицы"), Product(id: "4", title: "Гавайская", imageUrl: "Not fond", price: 400, descript: "Описание пицы"),Product(id: "5", title: "Диабло", imageUrl: "Not fond", price: 620, descript: "Описание пицы")]
}
