//
//  OrderView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders: OrderModel

    var body: some View {
        NavigationStack {
            List {
                ForEach($orders.orderItems) { $order in
                    NavigationLink(value: order) {
                        OrderRowView(order: $order)
                            .padding(5)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding(.horizontal, 7)
                    }
                    .navigationDestination(for: OrderItem.self) { order in
                        OrderDetailView(orderItem: $order, presentSheet: .constant(false), newOrder: .constant(false))
                    }
                    .navigationTitle("Your Order")
                }
                .onDelete { indexSet in
                    orders.orderItems.remove(atOffsets: indexSet)
                }
                .onMove { source, destination in
                    orders.orderItems.move(fromOffsets: source, toOffset: destination)
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: OrderModel())
    }
}
