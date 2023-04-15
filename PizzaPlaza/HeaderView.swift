//
//  HeaderView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("banner")
                .resizable()
                .scaledToFit()
            Text("Pizza Plaza")
                .background()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
