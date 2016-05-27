//
//  AppDelegate.swift
//  AutoLayoutDemo
//
//  Created by Intrepid-Pursuits on 5/25/16
//  Copyright (c) 2016 Intrepid-Pursuits. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func applicationDidFinishLaunching(application: UIApplication) {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds);
        let rootViewController = ALRootVIewController()
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        self.window = window
    }

}
