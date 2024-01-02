//
//  CardViewModel.swift
//  PizzaShop
//
//  Created by пользователь on 02.01.2024.
//

import Foundation

class CartViewModel: ObservableObject {
   @Published var position = [Position] ()
    func addPossition(_ position: Position) {
        self.position.append(position)
    }
}
