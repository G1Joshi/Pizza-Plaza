//
//  OrderItem.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 16/04/23.
//

struct OrderItem: Identifiable {
    var id: Int
    var item: MenuItem
    var quantity: Int
    var extraIngredients: Bool = false
    var name: String = ""
    var preferredCrust: PizzaCrust
    var comments: String = ""

    init(id: Int, item: MenuItem, quantity: Int = 1) {
        self.id = id
        self.item = item
        self.quantity = quantity
        preferredCrust = item.crust
    }

    init(id: Int, item: MenuItem, quantity: Int, extraIngredients: Bool, name: String, preferredCrust: PizzaCrust, comments: String) {
        self.id = id
        self.item = item
        self.quantity = quantity
        self.preferredCrust = preferredCrust
        self.name = name
        self.comments = comments
    }

    var extPrice: Double {
        item.price * Double(quantity)
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: OrderItem, rhs: OrderItem) -> Bool {
        lhs.id == rhs.id &&
            lhs.item == rhs.item &&
            lhs.quantity == rhs.quantity &&
            lhs.extraIngredients == rhs.extraIngredients &&
            lhs.name == rhs.name &&
            lhs.preferredCrust == rhs.preferredCrust &&
            lhs.comments == rhs.comments
    }
}

let testOrderItem = OrderItem(id: 1, item: testMenuItem)

let testOrders = [testOrderItem, OrderItem(id: 2, item: MenuModel().menu[0], quantity: 2)]
