//
//  ContentView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3]

    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
