//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by igor mekkers on 17.01.2022.
//

import SwiftUI

struct TimerView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject var userManager: UserManager
            
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(title: timer.buttonTitle, color: .red) {
                    timer.startTimer()
                }
                
                Spacer()

                ButtonView(title: "LogOut", color: .blue) {
                    DataManager.shared.clear(userManager: userManager)
                }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}
