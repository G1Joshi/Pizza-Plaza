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
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            } else {
                Image("board_sm")
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                RatingView(rating: 3)
            }
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: 0)
    }
}
