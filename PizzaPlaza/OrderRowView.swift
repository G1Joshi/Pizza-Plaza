//
//  OrderRowView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Your Order Item \(order)")
            Spacer()
            Text(00.00, format: .currency(code: "INR"))
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 0)
    }
}
