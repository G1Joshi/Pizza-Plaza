//
//  MenuItemView.swift
//  PizzaPlaza
//
//  Created by Jeevan Chandra Joshi on 15/04/23.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .fontWeight(.semibold)
                    .padding(.leading)
                if let image = UIImage(named: "0_lg") {
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in leo nec est euismod ornare. Phasellus ornare, libero ac commodo lacinia, sem lectus condimentum urna, eget fermentum diam arcu et nisi. Cras id lectus sed massa dapibus sodales. Duis lorem metus, vulputate ut dolor at, dapibus faucibus sem. Pellentesque a.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
