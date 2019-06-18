//
//  AppDelegate.swift
//  WKWebViewBug
//
//  Created by Yuriy Savitskiy on 17/06/2019.
//  Copyright © 2019 Yuriy Savitskiy. All rights reserved.
//


 /**
    It reproduces the web bug (iOS 12.2, 12.3.1 only)
    Set the speed limit on your phone to 3G.
    Run application.
    Move the slider to load unbuffered sections of video.
    After several iteration the webView freezes.
    Sometimes the error code is [IPC] Connection::waitForSyncReply: Timed-out while waiting for reply, id = ...
 
 */

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}

