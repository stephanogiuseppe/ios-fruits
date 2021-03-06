//
//  OnboardingView.swift
//  Fructus
//
//  Created by Stéphano Giuseppe Rajão de Paiva on 06/03/21.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData

    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
