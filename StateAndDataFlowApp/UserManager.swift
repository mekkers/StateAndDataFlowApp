//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by igor mekkers on 17.01.2022.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}


