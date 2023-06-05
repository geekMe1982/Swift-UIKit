//
//  data.swift
//  AppSceneCount
//
//  Created by Adam Khalifa on 6/2/23.
//

import Foundation
 
struct data {
    var method: String
    var discription: String
    var count: Int

    init(methodName: String, discriptionOf: String, countNo: Int ) {
        self.method = methodName
        self.discription = discriptionOf
        self.count = countNo
    }
}


let didFinishLaunch = data(methodName: "Did finish launching ", discriptionOf: "this method optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`", countNo: appDelegate.launchCount)
let configForConnection = data(methodName: "Configuration for connecting", discriptionOf: "Called when a new scene session is being created, Use this method to select a configuration to create the new scene with.", countNo: appDelegate.configurationForConnectingCount)

let willConnect = data(methodName: "will connect to", discriptionOf: "Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.", countNo: 0)
let becameActive = data(methodName: "scene became active", discriptionOf: "Called when the scene has moved from an inactive state to an active state. Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive", countNo: 0)
let willResignActive = data(methodName: "Scene will resign active", discriptionOf: "Called when the scene will move from an active state to an inactive state.", countNo: 0)
let willEnterFG = data(methodName: "Scene will enter foreground", discriptionOf: "Called as the scene transitions from the background to the foreground. Use this method to undo the changes made on entering the background.", countNo: 0)
let didEnterBG = data(methodName: "Scene did enter background", discriptionOf: "Called as the scene transitions from the foreground to the background.Use this method to save data, release shared resources, and store enough scene-specific state information to restore the scene back to its current state.", countNo: 0)

