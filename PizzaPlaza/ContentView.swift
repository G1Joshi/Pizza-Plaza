//
//  ContentView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]

    @StateObject var orders: OrderModel = OrderModel()
    @State private var selectedItem: MenuItem = noMenuItem
    @State private var showOrders: Bool = false
    @State private var presentGrid: Bool = false

    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            StatusBarView(showOrders: $showOrders, presentGrid: $presentGrid)
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(15)
            } else {
                MenuItemView(orders: orders, item: $selectedItem)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 15))
                if presentGrid {
                    MenuGridView(menu: menu, selectedItem: $selectedItem)
                } else {
                    MenuView(menu: menu, selectedItem: $selectedItem)
                }
            }
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("surf"), Color("sky"), .white], startPoint: .topLeading, endPoint: .bottomTrailing))
        .environmentObject(orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}
