//
//  BiowearsApp.swift
//  Biowears

import SwiftUI

@main
struct BiowearsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SignInUpView()
        }
    }
}
