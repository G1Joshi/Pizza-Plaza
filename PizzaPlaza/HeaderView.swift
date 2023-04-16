//
//  HeaderView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass

    var body: some View {
        VStack {
            if vSizeClass != UserInterfaceSizeClass.compact {
                ZStack(alignment: .bottomTrailing) {
                    Image("banner")
                        .resizable()
                        .scaledToFit()
                    Text("Pizza Plaza")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            } else {
                HStack(alignment: .bottom) {
                    Image("banner")
                        .resizable()
                        .scaledToFit()
                    Text("Pizza Plaza")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundColor(Color("surf"))
                        .fontWeight(.heavy)
                }
            }
        }
        .background(.ultraThinMaterial)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .environmentObject(OrderModel())
    }
}
