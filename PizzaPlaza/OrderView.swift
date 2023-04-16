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
        VStack {
            ZStack(alignment: .top) {
                ScrollView {
                    ForEach($orders.orderItems) { order in
                        OrderRowView(order: order)
                            .padding(5)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding(.horizontal, 7)
                    }
                }
                .padding(.top, 75)
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            Button("Delete Order") {
                if !orders.orderItems.isEmpty {
                    orders.removeLast()
                }
            }
            .padding(5)
            .background(.regularMaterial, in: Capsule())
            .padding(7)
        }
        .background(Color("surf"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: OrderModel())
    }
}
