//
//  MenuRowView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int

    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image)
            } else {
                Image("board_sm")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                RatingView(rating: 3)
            }
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: 0)
    }
}
