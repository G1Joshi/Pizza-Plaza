//
//  OrderRowView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order: OrderItem

    var body: some View {
        VStack {
            HStack {
                Text(order.item.name)
                Text("- " + order.preferredCrust.rawValue)
                if order.extraIngredients {
                    Image(systemName: "2.circle")
                }
                Spacer()
                Text(order.name)
            }
            HStack(alignment: .firstTextBaseline) {
                Text(order.quantity, format: .number)
                Text(order.item.price, format: .currency(code: "INR"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "INR"))
                    .fontWeight(.semibold)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: .constant(testOrderItem))
    }
}
