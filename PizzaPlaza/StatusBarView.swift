//
//  StatusBarView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 16/04/23.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrders: Bool
    @EnvironmentObject var orders: OrderModel

    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
            Spacer()
            Button(action: {
                showOrders.toggle()
            }, label: {
                Image(systemName: showOrders ? "cart" : "menucard")
            })
            Spacer()
            Label {
                Text(orders.orderTotal, format: .currency(code: "INR"))
            } icon: {
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
        }
        .foregroundStyle(.white)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(false))
            .environmentObject(OrderModel())
    }
}
