//
//  MenuItem.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 16/04/23.
//

struct MenuItem: Codable, Hashable, Identifiable {
    var id: Int
    var category: MenuCategory
    var name: String
    var description: String
    var crust: PizzaCrust
    var price: Double
    var rating: Int

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: MenuItem, rhs: MenuItem) -> Bool {
        lhs.id == rhs.id &&
            lhs.category == rhs.category &&
            lhs.description == rhs.description &&
            lhs.crust == rhs.crust &&
            lhs.name == rhs.name &&
            lhs.price == rhs.price &&
            lhs.rating == rhs.rating
    }
}

enum MenuCategory: String, Codable, CaseIterable {
    case originals = "Pizza Plaza Originals"
    case italian = "Italian Specialty pizzas"
    case mainland = "Mainland Specialty Pizzas"
}

enum PizzaCrust: String, Codable, CaseIterable {
    case neopolitan = "Neopolitan"
    case newYork = "New York"
    case calzone = "Calzone"
    case deepDish = "Deep Dish"
    case musubi = "Musubi"
}

let testMenuItem = MenuItem(id: 0, category: .italian, name: "Plaza Chicken Pizza", description: "The classic pizza that started it all", crust: .neopolitan, price: 14.99, rating: 5)

let noMenuItem = MenuItem(id: -1, category: .italian, name: "World Pizza with Aloha", description: "We're a small growing chain based in Honolulu, serivng pizzas from around the world and with Hawaiian influence.", crust: .neopolitan, price: 0, rating: 0)
