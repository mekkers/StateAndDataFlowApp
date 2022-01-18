//
//  StateAndDataFlowAppApp.swift
//  StateAndDataFlowApp
//
//  Created by igor mekkers on 17.01.2022.
//

import SwiftUI

@main
struct StateAndDataFlow: App {
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}

