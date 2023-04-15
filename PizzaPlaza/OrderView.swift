//
//  OrderView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]

    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                ForEach(orders, id: \.self) { order in
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
                Label {
                    Text(00.00, format: .currency(code: "INR"))
                } icon: {
                    Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                }
            }
            .padding()
            .background(.ultraThinMaterial)
        }
        .padding()
        .background(Color("surf"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [0])
    }
}
