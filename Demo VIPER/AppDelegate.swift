//
//  AppDelegate.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let navigationContorller = UINavigationController(rootViewController: QuranRouter.createModule())
        navigationContorller.navigationBar.barTintColor = .gray
        navigationContorller.navigationBar.topItem?.title = "Quran"
        window?.rootViewController = navigationContorller
        return true
    }
}

