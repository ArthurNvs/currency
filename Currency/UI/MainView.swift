//
//  ContentView.swift
//  Currency
//
//  Created by Arthur Monteiro on 28/08/22.
//

import SwiftUI
import CoreData

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("Câmbio")
                }
            
            CurrencyView()
                .tabItem {
                    Image(systemName: "tablecells.fill")
                    Text("Valores")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
