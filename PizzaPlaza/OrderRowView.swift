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
        VStack {
            HStack {
                Text("Your Order Item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                Text(00.00, format: .currency(code: "INR"))
                Spacer()
                Text(00.00, format: .currency(code: "INR"))
                    .fontWeight(.semibold)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 0)
    }
}
