//
//  ViewController.swift
//  AppSceneCount
//
//  Created by Adam Khalifa on 6/1/23.
//

import UIKit

var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

class ViewController: UIViewController {
    
    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var discription1: UILabel!
    @IBOutlet weak var configForConnect: UILabel!
    @IBOutlet weak var discription2: UILabel!
    @IBOutlet weak var willConnectTo: UILabel!
    @IBOutlet weak var discription3: UILabel!
    @IBOutlet weak var SceneDidBecomeActive: UILabel!
    @IBOutlet weak var discription4: UILabel!
    @IBOutlet weak var SceneWillResignActive: UILabel!
    @IBOutlet weak var discription5: UILabel!
    @IBOutlet weak var sceneWillEnterFG: UILabel!
    @IBOutlet weak var discription6: UILabel!
    @IBOutlet weak var SceneDidEnterBG: UILabel!
    @IBOutlet weak var discription7: UILabel!
    
    
    
    var willConnectToCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    var sceneDidDisconnectedCount = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        
        view.backgroundColor = .systemYellow
        
        didFinishLaunching.text = didFinishLaunch.method + " \(appDelegate.launchCount) time(s)"
        discription1.text = didFinishLaunch.discription
        
        configForConnect.text = configForConnection.method + " \(appDelegate.configurationForConnectingCount) time(s)"
        discription2.text = configForConnection.discription
    
        willConnectTo.text = willConnect.method + " \(willConnectToCount) time(s)"
        discription3.text = willConnect.discription
        
        SceneDidBecomeActive.text = becameActive.method + " \(didBecomeActiveCount) time(s)"
        discription4.text = becameActive.discription
        
        SceneWillResignActive.text = willResignActive.method + " \(willResignActiveCount) time(s)"
        discription5.text = willResignActive.discription
        
        sceneWillEnterFG.text = willEnterFG.method + " \(willEnterForegroundCount) time(s)"
        discription6.text = willEnterFG.discription
        
        SceneDidEnterBG.text = didEnterBG.method + " \(didEnterBackgroundCount) time(s)"
        discription7.text = didEnterBG.discription
    }
}
