//
//  MenuItemView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItems: Bool = false
    @State private var presentAlert: Bool = false
    @State private var newOrder: Bool = true
    @State private var order = noOrderItem
    @ObservedObject var orders: OrderModel
    @Binding var item: MenuItem

    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .fontWeight(.semibold)
                    .padding(.leading)
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical, 5)
                        .cornerRadius(15)
                } else {
                    Image("board_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("surf"), Color("sky").opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 10, y: 10)
            VStack(alignment: .leading) {
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button {
                order = OrderItem(id: 0, item: item)
                presentAlert = true
            } label: {
                Spacer()
                Text(item.price, format: .currency(code: "INR")).bold()
                Image(systemName: addedItems ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .disabled(item.id < 0)
            .padding()
            .background(.red, in: Capsule())
            .foregroundStyle(.white)
            .padding(5)
            .sheet(isPresented: $presentAlert) {
                addedItems = true
            } content: {
                OrderDetailView(orderItem: $order, presentSheet: $presentAlert, newOrder: $newOrder)
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(orders: OrderModel(), item: .constant(testMenuItem))
    }
}
