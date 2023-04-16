//
//  MenuModel.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 16/04/23.
//

import Foundation

class MenuModel {
    struct Menu: Codable {
        var menu: [MenuItem]
    }

    var menu: [MenuItem] = []

    init() {
        if let menuJSON = decodeJSON() {
            menu = menuJSON.menu
        }
    }

    func decodeJSON() -> Menu! {
        var menu: Menu!
        let decoder = JSONDecoder()
        do {
            if let url = Bundle.main.url(forResource: "Data", withExtension: "json") {
                let data = try Data(contentsOf: url)
                try menu = decoder.decode(Menu.self, from: data)
            }
        } catch let error as NSError {
            print("Error reading JSON file: \(error.localizedDescription)")
        }
        return menu
    }
}
