//
//  ContentView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]

    @State private var orders: [OrderItem] = testOrders
    @State private var selectedItem: MenuItem = noMenuItem
    @State private var showOrders: Bool = false

    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            HStack {
                Text("\(orders.count) orders")
                Spacer()
                Button(action: {
                    showOrders.toggle()
                }, label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                })
            }
            .foregroundStyle(.white)
            .font(.title2)
            if showOrders {
                OrderView(orders: $orders)
                    .cornerRadius(15)
            } else {
                MenuItemView(item: $selectedItem)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 15))
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("surf"), Color("sky"), .white], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}
