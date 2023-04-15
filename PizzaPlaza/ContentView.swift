//
//  ContentView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3]
    var showOrders: Bool = false

    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(15)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 15))
                MenuView()
            }
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("surf"), Color("sky"), .white], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
