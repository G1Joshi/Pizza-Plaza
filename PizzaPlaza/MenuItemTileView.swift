//
//  MenuItemTileView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 30/04/23.
//

import SwiftUI

struct MenuItemTileView: View {
    var menuItem: MenuItem

    var body: some View {
        VStack {
            Group {
                if let image = UIImage(named: "\(menuItem.id)_sm") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                } else {
                    Image("board_lg")
                        .resizable()
                        .scaledToFit()
                }
            }
            Text(menuItem.name).font(.caption2)
                .padding(3)
        }
        .background(Color("sky").opacity(0.5))
        .background(.regularMaterial)
        .cornerRadius(10)
        .shadow(radius: 3, x: 2, y: 2)
    }
}

struct MenuItemTileView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemTileView(menuItem: MenuModel().menu[0])
    }
}
