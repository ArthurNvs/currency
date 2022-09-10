//
//  CurrencyApp.swift
//  Currency
//
//  Created by Arthur Monteiro on 28/08/22.
//

import SwiftUI

@main
struct CurrencyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
