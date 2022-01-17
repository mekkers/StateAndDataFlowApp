//
//  StateAndDataFlowAppApp.swift
//  StateAndDataFlowApp
//
//  Created by igor mekkers on 17.01.2022.
//

import SwiftUI

@main
struct StateAndDataFlowAppApp: App {
    
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}

