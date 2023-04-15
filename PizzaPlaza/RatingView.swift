//
//  RatingView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct RatingView: View {
    var rating: Int

    var body: some View {
        HStack {
            ForEach(1 ... 5, id: \.self) { rate in
                Image(systemName: rate <= rating ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 0)
    }
}
