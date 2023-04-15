//
//  HeaderView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("banner")
                .resizable()
                .scaledToFit()
            Text("Pizza Plaza")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
                .foregroundStyle(.regularMaterial)
                .fontWeight(.semibold)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
